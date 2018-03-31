/*







import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Logger;
import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import static jdk.nashorn.internal.objects.NativeArray.map;


@ServerEndpoint(
        value="/chat/{fromandto}",
        decoders = MessageDecoder.class,
        encoders = MessageEncoder.class
)
public class ChatEndpoint {
    private final Logger log = Logger.getLogger(getClass().getName());

    private Session session;
    private String username;
    private String to;
    private static final Set<ChatEndpoint> chatEndpoints = new CopyOnWriteArraySet<>();
    private static HashMap<String,String> users = new HashMap<>();
    private static HashMap<String,String> link = new HashMap<>();

    @OnOpen
    public void onOpen(Session session, @PathParam("fromandto") String fromandto) throws IOException, EncodeException {
        
        String[] splitStr = fromandto.split("_");
        username = splitStr[0];
        try
        {
            to = splitStr[1];
        }
        catch(ArrayIndexOutOfBoundsException e)
        {
            to = null;
        }
        
        log.info(session.getId() + " connected!");
        
        this.session = session;
        this.username = username;
        
        
        if((link.containsKey(to)&&link.containsValue(username))||(!(link.containsKey(to))&&!(link.containsValue(username))))
        {   
            this.to = to;
            chatEndpoints.add(this);
            users.put(session.getId(), username);
            link.put(username,to);

            Message message = new Message();
            message.setFrom(username);
            message.setTo(to);
            message.setContent("connected!");
            broadcast(message);
            //sendMessageToOneUser(message);   
        }
        else if(link.containsValue(username))
                {
                    
                    String value = username;
                    String key = null;
                    for(Map.Entry entry:link.entrySet())
                    {
                        if(value.equals(entry.getValue()))
                        {
                            key = (String) entry.getKey();
                            break;
                        }
                    }
                    to = key;
                    this.to = to;
                    chatEndpoints.add(this);
                    users.put(session.getId(), username);
                    link.put(username,to);

                    Message message = new Message();
                    message.setFrom(username);
                    message.setTo(to);
                    message.setContent("connected!");
                    broadcast(message);
                    //sendMessageToOneUser(message);
                }
        
        else
        {
            this.to = to;
            Message message = new Message();
            message.setFrom(username);
            message.setContent(to  + " is busy right now");
            this.session.getBasicRemote().sendObject(message); 
            //broadcast(message);
            sendMessageToOneUser(message);
            
            
        }
        
        
    }

    @OnMessage
    public void onMessage(Session session, Message message) throws IOException, EncodeException {
        log.info(message.toString());

        message.setFrom(users.get(session.getId()));
        message.setTo(to);
        if(!(message.getFrom()==null))
        {
            sendMessageToOneUser(message);
        }
        
    }

    @OnClose
    public void onClose(Session session) throws IOException, EncodeException {
        log.info(session.getId() + " disconnected!");

        chatEndpoints.remove(this);
        link.remove(users.get(session.getId()));
        Message message = new Message();
        message.setFrom(users.get(session.getId()));
        message.setContent("disconnected!");
        broadcast(message);
    }

    @OnError
    public void onError(Session session, Throwable throwable) {
        log.warning(throwable.toString());
    }

    private static void broadcast(Message message) throws IOException, EncodeException {
        for (ChatEndpoint endpoint : chatEndpoints) {
            synchronized(endpoint) {
                endpoint.session.getBasicRemote().sendObject(message);
            }
        }
    }

    private static void sendMessageToOneUser(Message message) throws IOException, EncodeException {
        for (ChatEndpoint endpoint : chatEndpoints) {
            synchronized(endpoint) {
                if (endpoint.session.getId().equals(getSessionId(message.getTo()))) {
                    endpoint.session.getBasicRemote().sendObject(message);
                }
            }
        }
    }

    private static String getSessionId(String to) {
        if (users.containsValue(to)) {
            for (String sessionId: users.keySet()) {
                if (users.get(sessionId).equals(to)) {
                    return sessionId;
                }
            }
        }
        return null;
    }
}

*/





import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Logger;
import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import static jdk.nashorn.internal.objects.NativeArray.map;


@ServerEndpoint(
        value="/chat/{fromandto}",
        decoders = MessageDecoder.class,
        encoders = MessageEncoder.class
)
public class ChatEndpoint {
    private final Logger log = Logger.getLogger(getClass().getName());

    private Session session;
    private String username;
    private String to;
    private static final Set<ChatEndpoint> chatEndpoints = new CopyOnWriteArraySet<>();
    private static HashMap<String,String> users = new HashMap<>();
    private static HashMap<String,String> link = new HashMap<>();

    @OnOpen
    public void onOpen(Session session, @PathParam("fromandto") String fromandto) throws IOException, EncodeException {
        
        String[] splitStr = fromandto.split("_");
        username = splitStr[0];
        try
        {
            to = splitStr[1];
        }
        catch(ArrayIndexOutOfBoundsException e)
        {
            to = null;
        }
        
        log.info(session.getId() + " connected!");
        
        this.session = session;
        this.username = username;
        
        
        if((link.containsKey(to)&&link.containsValue(username))||(!(link.containsKey(to))&&!(link.containsValue(username))))
        {   
            this.to = to;
            chatEndpoints.add(this);
            users.put(session.getId(), username);
            link.put(username,to);

            Message message = new Message();
            message.setFrom(username);
            message.setTo(to);
            message.setContent("connected!");
            broadcast(message);
            //sendMessageToOneUser(message);   
        }
        else if(link.containsValue(username))
                {
                    
                    String value = username;
                    String key = null;
                    for(Map.Entry entry:link.entrySet())
                    {
                        if(value.equals(entry.getValue()))
                        {
                            key = (String) entry.getKey();
                            break;
                        }
                    }
                    to = key;
                    this.to = to;
                    chatEndpoints.add(this);
                    users.put(session.getId(), username);
                    link.put(username,to);

                    Message message = new Message();
                    message.setFrom(username);
                    message.setTo(to);
                    message.setContent("connected!");
                    broadcast(message);
                    //sendMessageToOneUser(message);
                }
        
        else
        {
            this.to = to;
            Message message = new Message();
            message.setFrom(username);
            message.setContent(to  + " is busy right now");
            this.session.getBasicRemote().sendObject(message); 
            //broadcast(message);
            sendMessageToOneUser(message);
            
            
        }
        
        
    }

    @OnMessage
    public void onMessage(Session session, Message message) throws IOException, EncodeException {
        log.info(message.toString());

        message.setFrom(users.get(session.getId()));
        message.setTo(to);
        if(!(message.getFrom()==null))
        {
            sendMessageToOneUser(message);
        }
        
    }

    @OnClose
    public void onClose(Session session) throws IOException, EncodeException {
        log.info(session.getId() + " disconnected!");

        chatEndpoints.remove(this);
        link.remove(users.get(session.getId()));
        Message message = new Message();
        message.setFrom(users.get(session.getId()));
        message.setContent("disconnected!");
        broadcast(message);
    }

    @OnError
    public void onError(Session session, Throwable throwable) {
        log.warning(throwable.toString());
    }

    private static void broadcast(Message message) throws IOException, EncodeException {
        for (ChatEndpoint endpoint : chatEndpoints) {
            synchronized(endpoint) {
                endpoint.session.getBasicRemote().sendObject(message);
            }
        }
    }

    private static void sendMessageToOneUser(Message message) throws IOException, EncodeException {
        for (ChatEndpoint endpoint : chatEndpoints) {
            synchronized(endpoint) {
                if (endpoint.session.getId().equals(getSessionId(message.getTo()))) {
                    endpoint.session.getBasicRemote().sendObject(message);
                }
            }
        }
    }

    private static String getSessionId(String to) {
        if (users.containsValue(to)) {
            for (String sessionId: users.keySet()) {
                if (users.get(sessionId).equals(to)) {
                    return sessionId;
                }
            }
        }
        return null;
    }
}
