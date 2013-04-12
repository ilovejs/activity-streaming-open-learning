package edu.unsw.streaming.client.panel;

import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.ClickHandler;
import com.google.gwt.event.dom.client.KeyCodes;
import com.google.gwt.event.dom.client.KeyUpEvent;
import com.google.gwt.event.dom.client.KeyUpHandler;
import com.google.gwt.user.client.History;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.rpc.AsyncCallback;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Label;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.VerticalPanel;

import edu.unsw.streaming.bean.UserBean;
import edu.unsw.streaming.client.StreamED;
import edu.unsw.streaming.service.UserServiceAsync;
import edu.unsw.streaming.shared.Validate;
import com.google.gwt.user.client.ui.PasswordTextBox;

/**
 * Login container
 * @author Lianne
 *
 */
public class Welcome_LoginPanel extends Composite {
	private TextBox idField;
	private PasswordTextBox pwField;
	
	private final UserServiceAsync userService = StreamED.userService;

	public Welcome_LoginPanel() {
		
		VerticalPanel vPanel = new VerticalPanel();
		initWidget(vPanel);
		
		Label instruction = new Label("Login");
		instruction.setStylePrimaryName("h2");
		vPanel.add(instruction);
		
		Label lblUserId = new Label("User ID");
		vPanel.add(lblUserId);
		
		idField = new TextBox();
		vPanel.add(idField);
		
		Label lblPassword = new Label("Password");
		vPanel.add(lblPassword);
		
		pwField = new PasswordTextBox();
		vPanel.add(pwField);
		
		Button btnLogin = new Button("Login");
		LoginHandler handler = new LoginHandler();
		btnLogin.addClickHandler(handler);
		pwField.addKeyUpHandler(handler);
		vPanel.add(btnLogin);
	}
	
	class LoginHandler implements ClickHandler, KeyUpHandler {
		public void onClick(ClickEvent event) {
			sendDetailsToServer();
		}
		public void onKeyUp(KeyUpEvent event) {
			if (event.getNativeKeyCode() == KeyCodes.KEY_ENTER) {
				sendDetailsToServer();
			}
		}
		private void sendDetailsToServer() {
			String pw = pwField.getText();
			String id = idField.getText();
			if (!Validate.isValidName(id) || !Validate.isEmail(id)) {
				Window.alert("Invalid user ID");
				return;
			} else if (!Validate.isValidPassword(pw)) {
				Window.alert("Invalid password");
				return;
			}

			//btnSignup.setEnabled(false);

			//textToServerLabel.setText(id);
			//serverResponseLabel.setText("");
			userService.login(id, pw, new AsyncCallback<UserBean>() {
				@Override
				public void onFailure(Throwable caught) {
					Window.alert("failed: "+caught.getMessage());
				}

				@Override
				public void onSuccess(UserBean result) {
					//Add token into the history if login successful
					//History.newItem("LoginSuccess", true);
					if (result != null) {
						StreamED.user = result;
						//Cookies.setCookie("sid", result.getId().toString());
						History.newItem("LoginSuccess", true);
					}
				}
			});
		}
	}

}
