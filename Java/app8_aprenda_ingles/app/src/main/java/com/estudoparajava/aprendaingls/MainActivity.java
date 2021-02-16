package com.estudoparajava.aprendaingls;

import androidx.appcompat.app.AppCompatActivity;

import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;

import android.os.Bundle;

import com.estudoparajava.aprendaingls.fragments.BichosFragment;
import com.estudoparajava.aprendaingls.fragments.NumerosFragment;
import com.estudoparajava.aprendaingls.fragments.VogaisFragment;
import com.ogaclejapan.smarttablayout.SmartTabLayout;
import com.ogaclejapan.smarttablayout.utils.v4.FragmentPagerItemAdapter;
import com.ogaclejapan.smarttablayout.utils.v4.FragmentPagerItems;

public class MainActivity extends AppCompatActivity {

    private SmartTabLayout smartTabLayout;
    private ViewPager viewPager;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        getSupportActionBar().setElevation(0);
        smartTabLayout = findViewById(R.id.smarTabLayout);
        viewPager = findViewById(R.id.viewPager);

        FragmentPagerAdapter fragmentPagerAdapter = new FragmentPagerItemAdapter(
                getSupportFragmentManager(),
                FragmentPagerItems.with(this)
                .add("Bichos", BichosFragment.class)
                .add("Números", NumerosFragment.class)
                .add("Vogais", VogaisFragment.class)
                .create()
        );

        viewPager.setAdapter(fragmentPagerAdapter);
        smartTabLayout.setViewPager(viewPager);

        }

    }
