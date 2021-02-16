package com.estudoparajava.aprendaingls.fragments;

import android.media.MediaPlayer;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;

import com.estudoparajava.aprendaingls.R;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link VogaisFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class VogaisFragment extends Fragment implements View.OnClickListener {

    private ImageButton buttonA, buttonE, buttonI,
            buttonO, buttonU;


    private MediaPlayer mediaPlayer;

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public VogaisFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment VogaisFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static VogaisFragment newInstance(String param1, String param2) {
        VogaisFragment fragment = new VogaisFragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_vogais, container, false);

        buttonA = view.findViewById(R.id.buttonA);
        buttonE = view.findViewById(R.id.buttonE);
        buttonI = view.findViewById(R.id.buttonI);
        buttonO = view.findViewById(R.id.buttonO);
        buttonU = view.findViewById(R.id.buttonU);
//
//
          buttonA.setOnClickListener(this);
          buttonE.setOnClickListener(this);
          buttonI.setOnClickListener(this);
          buttonO.setOnClickListener(this);
          buttonU.setOnClickListener(this);




        return view;

    }

    @Override
    public void onClick(View view) {

        switch (view.getId()){
            case R.id.buttonA :
                mediaPlayer = MediaPlayer.create(getActivity(), R.raw.a);
                tocarSom();
                break;
            case R.id.buttonE :
                mediaPlayer = MediaPlayer.create(getActivity(), R.raw.e);
                tocarSom();
                break;
            case R.id.buttonI :
                mediaPlayer = MediaPlayer.create(getActivity(), R.raw.i);
                tocarSom();
                break;
            case R.id.buttonO :
                mediaPlayer = MediaPlayer.create(getActivity(), R.raw.o);
                tocarSom();
                break;
            case R.id.buttonU :
                mediaPlayer = MediaPlayer.create(getActivity(), R.raw.u);
                tocarSom();
                break;
        }

    }

    public void tocarSom(){
        if(mediaPlayer != null){
            mediaPlayer.start();

            mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                @Override
                public void onCompletion(MediaPlayer mp) {
                    mp.release();
                }
            });
        }
    }


}