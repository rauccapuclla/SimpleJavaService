package app;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping; @RestController

public class DevOpsController {
  private static final Logger LOGGER = LoggerFactory.getLogger(DevOpsController.class);
    @RequestMapping("/")
    public String index() {
      LOGGER.info("Request has been made to /");

      return "Simple Java Service version 1";
      
    }
}
