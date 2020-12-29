#include "Camera.hpp"

namespace gps {
    
    //Camera constructor
    Camera::Camera(glm::vec3 cameraPosition, glm::vec3 cameraTarget, glm::vec3 cameraUp) {
    
        Camera::cameraPosition = cameraPosition;
         Camera::cameraTarget =  cameraTarget;
         Camera::cameraFrontDirection = glm::normalize( -Camera::cameraPosition + Camera::cameraTarget);
         Camera::cameraRightDirection = glm::normalize(glm::cross( glm::vec3(0.0f, 0.0f, -1.0f), cameraUp));
         Camera::cameraUpDirection = glm::cross(Camera::cameraFrontDirection, Camera::cameraRightDirection);
      
    }

    //return the view matrix, using the glm::lookAt() function
    glm::mat4 Camera::getViewMatrix() {
        glm::mat4 view;
        view = glm::lookAt(cameraPosition, cameraPosition+cameraFrontDirection, glm::vec3(0.0,1.0,0.0));

        return view;
    }

    //update the camera internal parameters following a camera move event
    void Camera::move(MOVE_DIRECTION direction, float speed) {
     
        if (direction == MOVE_FORWARD)
            cameraPosition += cameraFrontDirection * speed;
        if (direction == MOVE_BACKWARD)
            cameraPosition -= cameraFrontDirection * speed;
        if (direction == MOVE_LEFT)
            cameraPosition -= cameraRightDirection * speed;
        if (direction == MOVE_RIGHT)
            cameraPosition += cameraRightDirection * speed;
          
    }

    //update the camera internal parameters following a camera rotate event
    //yaw - camera rotation around the y axis
    //pitch - camera rotation around the x axis
    void Camera::rotate(float pitch, float yaw) {

        
         if (pitch > 89.0f)
            pitch = 89.0f;
        if (pitch < -89.0f)
            pitch = -89.0f;
                
        glm::vec3 front;
        front.x = cos(glm::radians(yaw)) * cos(glm::radians(pitch));
        front.y = sin(glm::radians(pitch));
        front.z = sin(glm::radians(yaw)) * cos(glm::radians(pitch));
        Camera::cameraFrontDirection = glm::normalize(front);
        // also re-calculate the Right and Up vector
        Camera::cameraRightDirection = glm::normalize(glm::cross(Camera::cameraFrontDirection, glm::vec3(0.0f, 1.0f, 0.0f)));  // normalize the vectors, because their length gets closer to 0 the more you look up or down which results in slower movement.
        Camera::cameraUpDirection    = glm::normalize(glm::cross(Camera::cameraRightDirection,Camera::cameraFrontDirection));
    }
}
