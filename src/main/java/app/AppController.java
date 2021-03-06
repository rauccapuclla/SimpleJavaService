package app;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping; @RestController

public class AppController {
  private static final Logger LOGGER = LoggerFactory.getLogger(AppController.class);
    @RequestMapping("/")
    public String index() {
      LOGGER.info("Request has been made to /");

      return "Simple Java Service version 1";
      
    }
}
