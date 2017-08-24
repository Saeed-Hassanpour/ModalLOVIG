/*
**  Author  : Saeed Hassanpour 
**  Company : Parto Pardazesh Fartak(IRANAPEX)- http://iranapex.ir
**  Date    : 2017/06
**  Version : 1.0
*/

(function() {
	
	var model, record$, value, idRegion$, ig$, view$,
	    th$, modalObj$, ajaxIdentifier$, clearCheck, returnCheck$, 
	    columnsmap$, 
	    countRun$ = 0;
	    
	var openMLovIG = {
	 makeDialogUrl: function(url, args) {
            var i,_temp
 	    th$ = this;
            // replace unicode escapes
	    url = url.replace(/\\u(\d\d\d\d)/g, function(m,d) {
	           return String.fromCharCode(parseInt(d, 16));
	    });

            if (args) {
	            var _temp = new Array();
	            _temp = args.split(",");
	            args = _temp || [];
	            
	            for ( i = 0; i < args.length; i++) {
	                //IG columns
	                if (encodeURIComponent(args[i]).indexOf("%23",0) != -1) {
	                        url = url.replace("%24" + i + "%24", th$.getIgValue(encodeURIComponent(args[i]).replace(/%23/g, "")));
	                        }
			//$v('item_name')
			else if (encodeURIComponent(args[i]).indexOf("%24v",0) > -1)             	
		                url = url.replace("%24" + i + "%24", eval(args[i]));
	                //values
	                else                	
		                url = url.replace("%24" + i + "%24", encodeURIComponent(args[i]));
	
	            }
             } 
            return url;
            
        },
    	getIgValue: function(colname) {	
		if ( view$.internalIdentifier === "grid" ) { 
		    model   = view$.model;  
		    record$ = view$.getSelectedRecords(); 
		    
		    record$.forEach(function(object,index) {  
		       value = model.getValue(record$[index],colname);
		       if (typeof value === 'object')
		            {
		            value = value.v;
		        }        
		       
		    });
		}
		return value;
	},
	setIgValue: function(pData, pReturn) {	
	
	    if (columnsmap$) {
	            
		    var result$,	    
		    itemsMapping = columnsmap$;//modalObj$.columnMap,
	            itemReturns = itemsMapping.substr(0, itemsMapping.indexOf(":")),
	            itemsMap    = itemsMapping.substr(itemsMapping.indexOf(":")+1);
	            returnCheck$ = pReturn;
	            
                    openlov$ = true;
	            
	            th$ = this;
	            
	            var temp = new Array();
	            temp = itemReturns.split(",");
	            itemReturns = temp || [];
	            
	            temp = itemsMap.split(",");
	            itemsMap    = temp || []; 
	
	            //logging
                    apex.debug.log('Modal Lov IG [itemReturns]: '+ itemReturns);
                    apex.debug.log('Modal Lov IG [itemsMap]: '+ itemsMap);
                    
		    record$.forEach(function(object,index) {  
		        for ( i = 0; i < itemReturns.length; i++) {
	                     //Set values
	                    if (returnCheck$ == true) {	
		                    result$ = eval('pData.'+encodeURIComponent(itemReturns[i]));
		                   //logging
                                    apex.debug.log('Modal Lov IG ['+ encodeURIComponent(itemsMap[i])+']: '+ result$);
	        	            model.setValue(record$[index],encodeURIComponent(itemsMap[i]),result$);
	        	         }  
	     	            //clear columns mapping
	        	    else  {   
		                    if (th$.getClearCheck() == true && pReturn != encodeURIComponent(itemsMap[i])) {
		                    	model.setValue(record$[index],encodeURIComponent(itemsMap[i]),'');
		                    }	
	                    }
		            
	                }
		        
		    });
	    }
	    th$.setclearCheck(false);
	    returnCheck$ = false;
	    
	},
	clearItemIg :  function (pData, pChange) {
		th$ = this;

		th$.setclearCheck(true); 
		if (pData && !pChange) {
			record$.forEach(function(object,index) {  
				model.setValue(record$[index],pData,'');
			});
		}
		//clear columns mapping
		if (columnsmap$) {

			th$.setIgValue(null, pData);
		}
                th$.setclearCheck(false); 
		
	},
	setclearCheck : function(pData) {
		clearCheck = pData;
	},
	getClearCheck : function() {
		return clearCheck;
	},
	setAjaxIdentifier : function(event,type) {
                //open dialog
                if (type == 'open') {
	                ajaxIdentifier$ = event.target.nextElementSibling.firstElementChild.nextElementSibling.innerText;
                }
                //change columns
                else if (type == 'change'){
                	ajaxIdentifier$ = event.target.nextElementSibling.nextElementSibling.firstElementChild.nextElementSibling.innerText;
                }
                //clear columns
                else {
                	ajaxIdentifier$ = event.target.innerText;
                	
                }
                
                ajaxIdentifier$ = ajaxIdentifier$.replace(/["']/g, "");
	},
	setRegionIG : function(event){
                //set and regionid                
                var _region = apex.region.findClosest(event.target);
                if ( _region ) {

		         idRegion$ = _region.element["0"].attributes[1].nodeValue; 
            	         ig$ = apex.region(idRegion$).widget();
		         view$ = ig$.interactiveGrid("getViews", ig$.interactiveGrid("getCurrentViewId")); 
		         
		         model       = view$.model;  
                         record$     = view$.getSelectedRecords(); 
                         //logging
                         apex.debug.log('Modal Lov IG [Current record]: '+ record$);
		 }      
				
	},
	ajaxCall : function(event, action, state) {
                th$.setAjaxIdentifier(event,action);
                //get & set region id
          	th$.setRegionIG(event);
                
                apex.server.plugin ( ajaxIdentifier$ , 
		                            {x01:'GET_COLS_MAP'}, 
		                                    { success: function( pData ) {
							if (pData.success){
							    	columnsmap$ = pData.modalcolsmap;
							        if (action == 'clear') {
							                _colName = event.target.id;
							                _colName = _colName.substr(_colName.indexOf("_")+1);
							        } 
							        else {
							                _colName = event.target.dataset.id;

							        }
							        //clear IG values
							        th$.clearItemIg(_colName, state);
							 }
		                                     },
				                         // Error Message
				                         error: function(xhr, pMessage) {
				                         	//logging
				                         	apex.debug.trace('Modal Lov IG - ajaxCall[GET_COLS_MAP =>Error]: ' , pMessage);
				                         } 
		                                 });
        },
	_init_event_modallov : function(pData, pAjaxId) {
		th$ = this;
		returnCheck$ = false;
		th$.setclearCheck(false);
		countRun$ = countRun$ + 1;
		var _ajaxids  ="";
                
                //logging
         	apex.debug.log('Modal Lov IG [ModalItem=>' + countRun$ + ']: '+ pData);
      	        var jsonData$ = JSON.parse(pData);
      	        
		if (jsonData$.cascadeCols) {
	            var _ajaxids, _temp = new Array();
	            _temp = jsonData$.cascadeCols.split(",");
	            _temp = _temp || [];
	            
	            for ( i = 0; i < _temp.length; i++) {
                    	_ajaxids = $("#C"+_temp[i]).attr('data-ajaxid');
                    	_ajaxids = _ajaxids + ',' + pAjaxId;
                        _ajaxids = _ajaxids.replace(/^undefined,?/, "");
                        
                    	$("#C"+_temp[i]).attr('data-ajaxid', _ajaxids);
                        $("#C"+_temp[i]).bind("change", function(event) {
        	                
		              	//find in close element with inner iax
		              	parent = $(event.target);
       			        
       			        currentigID = $(event.target).parents('div.a-IG').attr('id');
       			        _spanClear = $(event.target).closest('div#'+currentigID).find('button.ig-lov-clear');

       			        $(_spanClear).each(function( index ) {
					  _ajaxids = $('#'+event.target.id).data("ajaxid");
					  var _temp = new Array();
				          _temp = _ajaxids.split(",");
				          _temp = _temp || [];
				          for ( i = 0; i < _temp.length; i++) {
				          	if (_temp[i] == $(_spanClear)[index].innerText) {
						  	_buttonClear = $('span:contains("' + $(_spanClear)[index].innerText + '")').closest('button.ig-lov-clear');
						  	if (_buttonClear) {
								_buttonClear.trigger("click");
							} 	
					  	}
					        
				          }
				          
				});

		           });
                          
	        	}   
	        } 
		
		//run this script only once
		if (countRun$ == 1) {
			$(".ig-lov-clear").bind("click", function(event){
		               //prevent a double-click
		               $('.ig-lov-clear').prop("disabled", true);
      			       setTimeout(function(){$('.ig-lov-clear').prop("disabled", false);}, 500);
                               th$.ajaxCall(event, 'clear', false);
		               
		         });
	
		        $(".ig-modal-lov").bind("change", function(event) {
	
	                        if (returnCheck$ != true && th$.getClearCheck() != true ) {
		                        //get & set region id
					 th$.setRegionIG(event);
					 th$.ajaxCall(event, 'change', true);
					
		        	}
		        });
		        
			$('.ig-lov-open').dblclick(function(e){ 
  				  e.stopPropagation();
				  e.preventDefault();
				  return false;
			})
			
			$(".ig-lov-open").bind("click", function(event){
		            $('.ig-lov-open').prop("disabled", true);
   			    setTimeout(function(){$('.ig-lov-open').prop("disabled", false);}, 500);
		            
		                var _modalurl, _modallovvalues;
	                        th$.setAjaxIdentifier(event,'open');
		                //get & set region id
		                th$.setRegionIG(event);
	         	        
	                    apex.server.plugin ( ajaxIdentifier$ , 
	                            {x01:'PREPARE_URL'
	                            }, 
	                                    { success: function( pData ) {
		                                if (pData.success){
		                                    columnsmap$ = pData.modalcolsmap;
		                                    _modalurl = pData.openmodal;
		                                    _modallovvalues = pData.modallovvalues;
		                                    
		                                    //logging
	         	                            apex.debug.log('Modal Lov IG [PREPARE_URL-columnsmap]: ' + columnsmap$);
	                                                                                
				                    var modalurlIG = th$.makeDialogUrl(_modalurl,_modallovvalues);
					            apex.server.plugin ( ajaxIdentifier$ , 
				                            {x01:modalurlIG
				                            ,x02:idRegion$}, 
				                                    { success: function( pData ) {
				                                if (pData.success){
				                                    //logging
	         	                                            apex.debug.log('Modal Lov IG [PREPARE_URL-openmodal]: ' + pData.openmodal);
	         	                                            apex.debug.log('Modal Lov IG [Dialog_html_exp]: '+ pData.modalhtmlexp);
								    apex.debug.log('Modal Lov IG [Dialog_Row Clicked]: '+ pData.modalscriptdig);
								    
				                                    eval(pData.openmodal);

				                                }
				                               
				                                
				                                 },
					                             // Error Message
						                     error: function(xhr, pMessage) {
			        		                 	apex.debug.trace('Modal Lov IG - apex.server.plugin:open click(inner) => Error:', pMessage);
			                         		     }  
				                                 });
		                                    
		                                }
	                                 },
                         	         	// Error Message
			                         error: function(xhr, pMessage) {
			                         	apex.debug.trace('Modal Lov IG - apex.server.plugin:open click => Error:', pMessage);
			                         }  
	                                 });
		            
		         });	         
		}
	}
	
   } 
    window.openMLovIG = openMLovIG;
})(apex.jQuery);
