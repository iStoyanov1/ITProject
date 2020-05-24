package util;

import domain.models.User;
import repositories.UserRepository;

import javax.xml.bind.JAXB;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
import java.io.*;

public class XmlWorker {

    private String xmlFile = "C:\\Users\\IdeaPad 320-15IKB\\IdeaProjects\\ITProject\\src\\main\\webapp\\source\\users.xml";

    public UserRepository readFromXml() throws JAXBException, FileNotFoundException {
        JAXBContext context = JAXBContext.newInstance(UserRepository.class);
        Unmarshaller unmarshaller = context.createUnmarshaller();
        FileReader reader = new FileReader(xmlFile);
        UserRepository userRepository = (UserRepository)unmarshaller.unmarshal(reader);

        return userRepository;
    }

}
