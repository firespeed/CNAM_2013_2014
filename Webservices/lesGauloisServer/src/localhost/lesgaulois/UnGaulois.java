
/**
 * UnGaulois.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:34:40 IST)
 */

            
                package localhost.lesgaulois;
            

            /**
            *  UnGaulois bean class
            */
            @SuppressWarnings({"unchecked","unused"})
        
        public  class UnGaulois
        implements org.apache.axis2.databinding.ADBBean{
        /* This type was generated from the piece of schema that had
                name = UnGaulois
                Namespace URI = http://localhost:8080/lesGaulois/
                Namespace Prefix = ns1
                */
            

                        /**
                        * field for Nom
                        */

                        
                                    protected java.lang.String localNom ;
                                

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getNom(){
                               return localNom;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Nom
                               */
                               public void setNom(java.lang.String param){
                            
                                            this.localNom=param;
                                    

                               }
                            

                        /**
                        * field for Specialite
                        */

                        
                                    protected java.lang.String localSpecialite ;
                                

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getSpecialite(){
                               return localSpecialite;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Specialite
                               */
                               public void setSpecialite(java.lang.String param){
                            
                                            this.localSpecialite=param;
                                    

                               }
                            

                        /**
                        * field for LeurHabitation
                        */

                        
                                    protected java.lang.String localLeurHabitation ;
                                

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getLeurHabitation(){
                               return localLeurHabitation;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param LeurHabitation
                               */
                               public void setLeurHabitation(java.lang.String param){
                            
                                            this.localLeurHabitation=param;
                                    

                               }
                            

                        /**
                        * field for Adresse
                        */

                        
                                    protected java.lang.String localAdresse ;
                                

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getAdresse(){
                               return localAdresse;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Adresse
                               */
                               public void setAdresse(java.lang.String param){
                            
                                            this.localAdresse=param;
                                    

                               }
                            

                        /**
                        * field for SesBatailles
                        * This was an Array!
                        */

                        
                                    protected localhost.lesgaulois.LesBatailles[] localSesBatailles ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localSesBataillesTracker = false ;

                           public boolean isSesBataillesSpecified(){
                               return localSesBataillesTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return localhost.lesgaulois.LesBatailles[]
                           */
                           public  localhost.lesgaulois.LesBatailles[] getSesBatailles(){
                               return localSesBatailles;
                           }

                           
                        


                               
                              /**
                               * validate the array for SesBatailles
                               */
                              protected void validateSesBatailles(localhost.lesgaulois.LesBatailles[] param){
                             
                              }


                             /**
                              * Auto generated setter method
                              * @param param SesBatailles
                              */
                              public void setSesBatailles(localhost.lesgaulois.LesBatailles[] param){
                              
                                   validateSesBatailles(param);

                               localSesBataillesTracker = param != null;
                                      
                                      this.localSesBatailles=param;
                              }

                               
                             
                             /**
                             * Auto generated add method for the array for convenience
                             * @param param localhost.lesgaulois.LesBatailles
                             */
                             public void addSesBatailles(localhost.lesgaulois.LesBatailles param){
                                   if (localSesBatailles == null){
                                   localSesBatailles = new localhost.lesgaulois.LesBatailles[]{};
                                   }

                            
                                 //update the setting tracker
                                localSesBataillesTracker = true;
                            

                               java.util.List list =
                            org.apache.axis2.databinding.utils.ConverterUtil.toList(localSesBatailles);
                               list.add(param);
                               this.localSesBatailles =
                             (localhost.lesgaulois.LesBatailles[])list.toArray(
                            new localhost.lesgaulois.LesBatailles[list.size()]);

                             }
                             

     
     
        /**
        *
        * @param parentQName
        * @param factory
        * @return org.apache.axiom.om.OMElement
        */
       public org.apache.axiom.om.OMElement getOMElement (
               final javax.xml.namespace.QName parentQName,
               final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException{


        
               org.apache.axiom.om.OMDataSource dataSource =
                       new org.apache.axis2.databinding.ADBDataSource(this,parentQName);
               return factory.createOMElement(dataSource,parentQName);
            
        }

         public void serialize(final javax.xml.namespace.QName parentQName,
                                       javax.xml.stream.XMLStreamWriter xmlWriter)
                                throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException{
                           serialize(parentQName,xmlWriter,false);
         }

         public void serialize(final javax.xml.namespace.QName parentQName,
                               javax.xml.stream.XMLStreamWriter xmlWriter,
                               boolean serializeType)
            throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException{
            
                


                java.lang.String prefix = null;
                java.lang.String namespace = null;
                

                    prefix = parentQName.getPrefix();
                    namespace = parentQName.getNamespaceURI();
                    writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);
                
                  if (serializeType){
               

                   java.lang.String namespacePrefix = registerPrefix(xmlWriter,"http://localhost:8080/lesGaulois/");
                   if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)){
                       writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","type",
                           namespacePrefix+":UnGaulois",
                           xmlWriter);
                   } else {
                       writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","type",
                           "UnGaulois",
                           xmlWriter);
                   }

               
                   }
               
                                    namespace = "";
                                    writeStartElement(null, namespace, "nom", xmlWriter);
                             

                                          if (localNom==null){
                                              // write the nil attribute
                                              
                                                     throw new org.apache.axis2.databinding.ADBException("nom cannot be null!!");
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localNom);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             
                                    namespace = "";
                                    writeStartElement(null, namespace, "specialite", xmlWriter);
                             

                                          if (localSpecialite==null){
                                              // write the nil attribute
                                              
                                                     throw new org.apache.axis2.databinding.ADBException("specialite cannot be null!!");
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localSpecialite);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             
                                    namespace = "";
                                    writeStartElement(null, namespace, "leurHabitation", xmlWriter);
                             

                                          if (localLeurHabitation==null){
                                              // write the nil attribute
                                              
                                                     throw new org.apache.axis2.databinding.ADBException("leurHabitation cannot be null!!");
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localLeurHabitation);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             
                                    namespace = "";
                                    writeStartElement(null, namespace, "adresse", xmlWriter);
                             

                                          if (localAdresse==null){
                                              // write the nil attribute
                                              
                                                     throw new org.apache.axis2.databinding.ADBException("adresse cannot be null!!");
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localAdresse);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                              if (localSesBataillesTracker){
                                       if (localSesBatailles!=null){
                                            for (int i = 0;i < localSesBatailles.length;i++){
                                                if (localSesBatailles[i] != null){
                                                 localSesBatailles[i].serialize(new javax.xml.namespace.QName("","sesBatailles"),
                                                           xmlWriter);
                                                } else {
                                                   
                                                        // we don't have to do any thing since minOccures is zero
                                                    
                                                }

                                            }
                                     } else {
                                        
                                               throw new org.apache.axis2.databinding.ADBException("sesBatailles cannot be null!!");
                                        
                                    }
                                 }
                    xmlWriter.writeEndElement();
               

        }

        private static java.lang.String generatePrefix(java.lang.String namespace) {
            if(namespace.equals("http://localhost:8080/lesGaulois/")){
                return "ns1";
            }
            return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
        }

        /**
         * Utility method to write an element start tag.
         */
        private void writeStartElement(java.lang.String prefix, java.lang.String namespace, java.lang.String localPart,
                                       javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
            java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);
            if (writerPrefix != null) {
                xmlWriter.writeStartElement(namespace, localPart);
            } else {
                if (namespace.length() == 0) {
                    prefix = "";
                } else if (prefix == null) {
                    prefix = generatePrefix(namespace);
                }

                xmlWriter.writeStartElement(prefix, localPart, namespace);
                xmlWriter.writeNamespace(prefix, namespace);
                xmlWriter.setPrefix(prefix, namespace);
            }
        }
        
        /**
         * Util method to write an attribute with the ns prefix
         */
        private void writeAttribute(java.lang.String prefix,java.lang.String namespace,java.lang.String attName,
                                    java.lang.String attValue,javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException{
            if (xmlWriter.getPrefix(namespace) == null) {
                xmlWriter.writeNamespace(prefix, namespace);
                xmlWriter.setPrefix(prefix, namespace);
            }
            xmlWriter.writeAttribute(namespace,attName,attValue);
        }

        /**
         * Util method to write an attribute without the ns prefix
         */
        private void writeAttribute(java.lang.String namespace,java.lang.String attName,
                                    java.lang.String attValue,javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException{
            if (namespace.equals("")) {
                xmlWriter.writeAttribute(attName,attValue);
            } else {
                registerPrefix(xmlWriter, namespace);
                xmlWriter.writeAttribute(namespace,attName,attValue);
            }
        }


           /**
             * Util method to write an attribute without the ns prefix
             */
            private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
                                             javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {

                java.lang.String attributeNamespace = qname.getNamespaceURI();
                java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);
                if (attributePrefix == null) {
                    attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
                }
                java.lang.String attributeValue;
                if (attributePrefix.trim().length() > 0) {
                    attributeValue = attributePrefix + ":" + qname.getLocalPart();
                } else {
                    attributeValue = qname.getLocalPart();
                }

                if (namespace.equals("")) {
                    xmlWriter.writeAttribute(attName, attributeValue);
                } else {
                    registerPrefix(xmlWriter, namespace);
                    xmlWriter.writeAttribute(namespace, attName, attributeValue);
                }
            }
        /**
         *  method to handle Qnames
         */

        private void writeQName(javax.xml.namespace.QName qname,
                                javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
            java.lang.String namespaceURI = qname.getNamespaceURI();
            if (namespaceURI != null) {
                java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);
                if (prefix == null) {
                    prefix = generatePrefix(namespaceURI);
                    xmlWriter.writeNamespace(prefix, namespaceURI);
                    xmlWriter.setPrefix(prefix,namespaceURI);
                }

                if (prefix.trim().length() > 0){
                    xmlWriter.writeCharacters(prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
                } else {
                    // i.e this is the default namespace
                    xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
                }

            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
            }
        }

        private void writeQNames(javax.xml.namespace.QName[] qnames,
                                 javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {

            if (qnames != null) {
                // we have to store this data until last moment since it is not possible to write any
                // namespace data after writing the charactor data
                java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
                java.lang.String namespaceURI = null;
                java.lang.String prefix = null;

                for (int i = 0; i < qnames.length; i++) {
                    if (i > 0) {
                        stringToWrite.append(" ");
                    }
                    namespaceURI = qnames[i].getNamespaceURI();
                    if (namespaceURI != null) {
                        prefix = xmlWriter.getPrefix(namespaceURI);
                        if ((prefix == null) || (prefix.length() == 0)) {
                            prefix = generatePrefix(namespaceURI);
                            xmlWriter.writeNamespace(prefix, namespaceURI);
                            xmlWriter.setPrefix(prefix,namespaceURI);
                        }

                        if (prefix.trim().length() > 0){
                            stringToWrite.append(prefix).append(":").append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
                        } else {
                            stringToWrite.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
                        }
                    } else {
                        stringToWrite.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
                    }
                }
                xmlWriter.writeCharacters(stringToWrite.toString());
            }

        }


        /**
         * Register a namespace prefix
         */
        private java.lang.String registerPrefix(javax.xml.stream.XMLStreamWriter xmlWriter, java.lang.String namespace) throws javax.xml.stream.XMLStreamException {
            java.lang.String prefix = xmlWriter.getPrefix(namespace);
            if (prefix == null) {
                prefix = generatePrefix(namespace);
                javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();
                while (true) {
                    java.lang.String uri = nsContext.getNamespaceURI(prefix);
                    if (uri == null || uri.length() == 0) {
                        break;
                    }
                    prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
                }
                xmlWriter.writeNamespace(prefix, namespace);
                xmlWriter.setPrefix(prefix, namespace);
            }
            return prefix;
        }


  
        /**
        * databinding method to get an XML representation of this object
        *
        */
        public javax.xml.stream.XMLStreamReader getPullParser(javax.xml.namespace.QName qName)
                    throws org.apache.axis2.databinding.ADBException{


        
                 java.util.ArrayList elementList = new java.util.ArrayList();
                 java.util.ArrayList attribList = new java.util.ArrayList();

                
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "nom"));
                                 
                                        if (localNom != null){
                                            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localNom));
                                        } else {
                                           throw new org.apache.axis2.databinding.ADBException("nom cannot be null!!");
                                        }
                                    
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "specialite"));
                                 
                                        if (localSpecialite != null){
                                            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localSpecialite));
                                        } else {
                                           throw new org.apache.axis2.databinding.ADBException("specialite cannot be null!!");
                                        }
                                    
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "leurHabitation"));
                                 
                                        if (localLeurHabitation != null){
                                            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localLeurHabitation));
                                        } else {
                                           throw new org.apache.axis2.databinding.ADBException("leurHabitation cannot be null!!");
                                        }
                                    
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "adresse"));
                                 
                                        if (localAdresse != null){
                                            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localAdresse));
                                        } else {
                                           throw new org.apache.axis2.databinding.ADBException("adresse cannot be null!!");
                                        }
                                     if (localSesBataillesTracker){
                             if (localSesBatailles!=null) {
                                 for (int i = 0;i < localSesBatailles.length;i++){

                                    if (localSesBatailles[i] != null){
                                         elementList.add(new javax.xml.namespace.QName("",
                                                                          "sesBatailles"));
                                         elementList.add(localSesBatailles[i]);
                                    } else {
                                        
                                                // nothing to do
                                            
                                    }

                                 }
                             } else {
                                 
                                        throw new org.apache.axis2.databinding.ADBException("sesBatailles cannot be null!!");
                                    
                             }

                        }

                return new org.apache.axis2.databinding.utils.reader.ADBXMLStreamReaderImpl(qName, elementList.toArray(), attribList.toArray());
            
            

        }

  

     /**
      *  Factory class that keeps the parse method
      */
    public static class Factory{

        
        

        /**
        * static method to create the object
        * Precondition:  If this object is an element, the current or next start element starts this object and any intervening reader events are ignorable
        *                If this object is not an element, it is a complex type and the reader is at the event just after the outer start element
        * Postcondition: If this object is an element, the reader is positioned at its end element
        *                If this object is a complex type, the reader is positioned at the end element of its outer element
        */
        public static UnGaulois parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception{
            UnGaulois object =
                new UnGaulois();

            int event;
            java.lang.String nillableValue = null;
            java.lang.String prefix ="";
            java.lang.String namespaceuri ="";
            try {
                
                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                
                if (reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","type")!=null){
                  java.lang.String fullTypeName = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                        "type");
                  if (fullTypeName!=null){
                    java.lang.String nsPrefix = null;
                    if (fullTypeName.indexOf(":") > -1){
                        nsPrefix = fullTypeName.substring(0,fullTypeName.indexOf(":"));
                    }
                    nsPrefix = nsPrefix==null?"":nsPrefix;

                    java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":")+1);
                    
                            if (!"UnGaulois".equals(type)){
                                //find namespace for the prefix
                                java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);
                                return (UnGaulois)localhost.lesgaulois.ExtensionMapper.getTypeObject(
                                     nsUri,type,reader);
                              }
                        

                  }
                

                }

                

                
                // Note all attributes that were handled. Used to differ normal attributes
                // from anyAttributes.
                java.util.Vector handledAttributes = new java.util.Vector();
                

                
                    
                    reader.next();
                
                        java.util.ArrayList list5 = new java.util.ArrayList();
                    
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","nom").equals(reader.getName())){
                                
                                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                    if ("true".equals(nillableValue) || "1".equals(nillableValue)){
                                        throw new org.apache.axis2.databinding.ADBException("The element: "+"nom" +"  cannot be null");
                                    }
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setNom(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                              
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                else{
                                    // A start element we are not expecting indicates an invalid parameter was passed
                                    throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                                }
                            
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","specialite").equals(reader.getName())){
                                
                                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                    if ("true".equals(nillableValue) || "1".equals(nillableValue)){
                                        throw new org.apache.axis2.databinding.ADBException("The element: "+"specialite" +"  cannot be null");
                                    }
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setSpecialite(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                              
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                else{
                                    // A start element we are not expecting indicates an invalid parameter was passed
                                    throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                                }
                            
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","leurHabitation").equals(reader.getName())){
                                
                                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                    if ("true".equals(nillableValue) || "1".equals(nillableValue)){
                                        throw new org.apache.axis2.databinding.ADBException("The element: "+"leurHabitation" +"  cannot be null");
                                    }
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setLeurHabitation(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                              
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                else{
                                    // A start element we are not expecting indicates an invalid parameter was passed
                                    throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                                }
                            
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","adresse").equals(reader.getName())){
                                
                                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                    if ("true".equals(nillableValue) || "1".equals(nillableValue)){
                                        throw new org.apache.axis2.databinding.ADBException("The element: "+"adresse" +"  cannot be null");
                                    }
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setAdresse(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                              
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                else{
                                    // A start element we are not expecting indicates an invalid parameter was passed
                                    throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                                }
                            
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","sesBatailles").equals(reader.getName())){
                                
                                    
                                    
                                    // Process the array and step past its final element's end.
                                    list5.add(localhost.lesgaulois.LesBatailles.Factory.parse(reader));
                                                                
                                                        //loop until we find a start element that is not part of this array
                                                        boolean loopDone5 = false;
                                                        while(!loopDone5){
                                                            // We should be at the end element, but make sure
                                                            while (!reader.isEndElement())
                                                                reader.next();
                                                            // Step out of this element
                                                            reader.next();
                                                            // Step to next element event.
                                                            while (!reader.isStartElement() && !reader.isEndElement())
                                                                reader.next();
                                                            if (reader.isEndElement()){
                                                                //two continuous end elements means we are exiting the xml structure
                                                                loopDone5 = true;
                                                            } else {
                                                                if (new javax.xml.namespace.QName("","sesBatailles").equals(reader.getName())){
                                                                    list5.add(localhost.lesgaulois.LesBatailles.Factory.parse(reader));
                                                                        
                                                                }else{
                                                                    loopDone5 = true;
                                                                }
                                                            }
                                                        }
                                                        // call the converter utility  to convert and set the array
                                                        
                                                        object.setSesBatailles((localhost.lesgaulois.LesBatailles[])
                                                            org.apache.axis2.databinding.utils.ConverterUtil.convertToArray(
                                                                localhost.lesgaulois.LesBatailles.class,
                                                                list5));
                                                            
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                  
                            while (!reader.isStartElement() && !reader.isEndElement())
                                reader.next();
                            
                                if (reader.isStartElement())
                                // A start element we are not expecting indicates a trailing invalid property
                                throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                            



            } catch (javax.xml.stream.XMLStreamException e) {
                throw new java.lang.Exception(e);
            }

            return object;
        }

        }//end of factory class

        

        }
           
    