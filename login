package com.example.loginapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class LoginActivity extends AppCompatActivity {
    EditText emailText,passwordText;
    String rEmail,rPassword;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        emailText=findViewById(R.id.editTextEmailAddress);
        passwordText=findViewById(R.id.editTextPassword);
        rEmail=getIntent().getStringExtra("email");
        rPassword=getIntent().getStringExtra("password");

    }
    public void login(View view){
        String email=emailText.getText().toString();
        String password=passwordText.getText().toString();
        if(rEmail.equals(email) && rPassword.equals(password))
        {
            Intent intent=new Intent(this,Loginsuccesful.class);
            startActivity(intent);
        }
        else {
            Toast.makeText(this,"invalid credentials",Toast.LENGTH_LONG).show();
        }



    }
}
