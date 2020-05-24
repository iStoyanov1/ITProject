package repositories;

import domain.models.User;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


@XmlRootElement(name = "users")
@XmlAccessorType(XmlAccessType.FIELD)
public class UserRepository {

    @XmlElement(name = "user")
    public static List<User> users = new ArrayList<>();


    public void add(Collection<User> user){
        users.addAll(user);
    }

    public List<User> getAll(){
        return users;
    }
}
