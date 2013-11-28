
/**
 * ExtensionMapper.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:34:40 IST)
 */

        
            package localhost.lesgaulois;
        
            /**
            *  ExtensionMapper class
            */
            @SuppressWarnings({"unchecked","unused"})
        
        public  class ExtensionMapper{

          public static java.lang.Object getTypeObject(java.lang.String namespaceURI,
                                                       java.lang.String typeName,
                                                       javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception{

              
                  if (
                  "http://localhost:8080/lesGaulois/".equals(namespaceURI) &&
                  "LesBatailles".equals(typeName)){
                   
                            return  localhost.lesgaulois.LesBatailles.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://localhost:8080/lesGaulois/".equals(namespaceURI) &&
                  "UnGaulois".equals(typeName)){
                   
                            return  localhost.lesgaulois.UnGaulois.Factory.parse(reader);
                        

                  }

              
             throw new org.apache.axis2.databinding.ADBException("Unsupported type " + namespaceURI + " " + typeName);
          }

        }
    