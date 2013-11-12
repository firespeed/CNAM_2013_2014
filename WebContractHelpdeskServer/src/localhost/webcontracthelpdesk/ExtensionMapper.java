
/**
 * ExtensionMapper.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:34:40 IST)
 */

        
            package localhost.webcontracthelpdesk;
        
            /**
            *  ExtensionMapper class
            */
            @SuppressWarnings({"unchecked","unused"})
        
        public  class ExtensionMapper{

          public static java.lang.Object getTypeObject(java.lang.String namespaceURI,
                                                       java.lang.String typeName,
                                                       javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception{

              
                  if (
                  "http://localhost:8080/WebContractHelpdesk/".equals(namespaceURI) &&
                  "Title_type1".equals(typeName)){
                   
                            return  localhost.webcontracthelpdesk.Title_type1.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://localhost:8080/WebContractHelpdesk/".equals(namespaceURI) &&
                  "Question".equals(typeName)){
                   
                            return  localhost.webcontracthelpdesk.Question.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://localhost:8080/WebContractHelpdesk/".equals(namespaceURI) &&
                  "Title_type1".equals(typeName)){
                   
                            return  localhost.webcontracthelpdesk.Title_type1.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://localhost:8080/WebContractHelpdesk/".equals(namespaceURI) &&
                  "Type_type1".equals(typeName)){
                   
                            return  localhost.webcontracthelpdesk.Type_type1.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://localhost:8080/WebContractHelpdesk/".equals(namespaceURI) &&
                  "Product_type1".equals(typeName)){
                   
                            return  localhost.webcontracthelpdesk.Product_type1.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://localhost:8080/WebContractHelpdesk/".equals(namespaceURI) &&
                  "Urgency".equals(typeName)){
                   
                            return  localhost.webcontracthelpdesk.Urgency.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://localhost:8080/WebContractHelpdesk/".equals(namespaceURI) &&
                  "QuestionID".equals(typeName)){
                   
                            return  localhost.webcontracthelpdesk.QuestionID.Factory.parse(reader);
                        

                  }

              
             throw new org.apache.axis2.databinding.ADBException("Unsupported type " + namespaceURI + " " + typeName);
          }

        }
    