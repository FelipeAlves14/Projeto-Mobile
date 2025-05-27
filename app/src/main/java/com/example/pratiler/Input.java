package com.example.pratiler;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.content.ContextCompat;

public class Input extends AppCompatEditText {
    public Input(Context c, AttributeSet attributes) {
        super(c, attributes);
        Drawable inputBackground = ContextCompat.getDrawable(c, R.drawable.background_input);
        setBackground(inputBackground);
        setHintTextColor(0xFFB7B7B7);
        setTextColor(0xFF000000);
    }
}
