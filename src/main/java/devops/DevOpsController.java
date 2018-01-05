package devops;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping; @RestController

public class DevOpsController {
    @RequestMapping("/")
    public String index() {
        return "Aplicación de laboratorio v2";
    }
}
