

<CsoundSynthesizer>
<CsInstruments>
;sr      =  44100
;ksmps   =  8
;nchnls  =  2
;
;0dbfs = 1

sr	=	22050	
ksmps	=	32
nchnls			=		1
0dbfs				=		1


alwayson 1


gisine ftgen 1, 0, 4096, 10, 1
giRecamanWave1 ftgen 2, 0, 8192, 9, 0.001, 0.003, 0.006, 0.002, 0.007, 0.013, 0.020, 0.012, 0.021, 0.011, 0.022, 0.010, 0.023, 0.009, 0.024, 0.008, 0.025, 0.043, 0.062, 0.042, 0.063, 0.041, 0.018, 0.042, 0.017, 0.043, 0.016, 0.044, 0.015, 0.045, 0.014, 0.046, 0.079, 0.113, 0.078, 0.114, 0.077, 0.039, 0.078, 0.038, 0.079, 0.037, 0.080, 0.036, 0.081, 0.035, 0.082, 0.034, 0.083, 0.033, 0.084, 0.032, 0.085, 0.031, 0.086, 0.030, 0.087, 0.029, 0.088, 0.028, 0.089, 0.027, 0.090, 0.026, 0.091, 0.157, 0.224, 0.156, 0.225, 0.155

giRecamanWave2 ftgen 3, 0, 8192, 9, 0.010, 0.030, 0.060, 0.020, 0.070, 0.130, 0.200, 0.120, 0.210, 0.110, 0.220, 0.100, 0.230, 0.090, 0.240, 0.080, 0.250, 0.430, 0.620, 0.420, 0.630, 0.410, 0.180, 0.420, 0.170, 0.430, 0.160, 0.440, 0.150, 0.450, 0.140, 0.460, 0.790, 1.130, 0.780, 1.140, 0.770, 0.390, 0.780, 0.380, 0.790, 0.370, 0.800, 0.360, 0.810, 0.350, 0.820, 0.340, 0.830, 0.330, 0.840, 0.320, 0.850, 0.310, 0.860, 0.300, 0.870, 0.290, 0.880, 0.280, 0.890, 0.270, 0.900, 0.260, 0.910, 1.570, 2.240, 1.560, 2.250, 1.550

giRecamanWave3 ftgen 4, 0, 8192, 9, 0.100, 0.300, 0.600, 0.200, 0.700, 1.300, 2.000, 1.200, 2.100, 1.100, 2.200, 1.000, 2.300, 0.900, 2.400, 0.800, 2.500, 4.300, 6.200, 4.200, 6.300, 4.100, 1.800, 4.200, 1.700, 4.300, 1.600, 4.400, 1.500, 4.500, 1.400, 4.600, 7.900, 11.300, 7.800, 11.400, 7.700, 3.900, 7.800, 3.800, 7.900, 3.700, 8.000, 3.600, 8.100, 3.500, 8.200, 3.400, 8.300, 3.300, 8.400, 3.200, 8.500, 3.100, 8.600, 3.000, 8.700, 2.900, 8.800, 2.800, 8.900, 2.700, 9.000, 2.600, 9.100, 15.700, 22.400, 15.600, 22.500, 15.500

instr 1


  	kGdxAMP 		init .5
;  	kGdxDist init 0
;  	kGdxDurDist init 0
;  	kGdxAD 			init 0
;  	kGdxDD 			init 0
;  	kGdxMf 			init 0
;  	kGdxMMf			init 0
;  	kGdxAS 			init 0
;  	kGdxDS 			init 0
;  	kNum			  init 0
;

  	kGdxAMP 		chnget 	"amp"
  	kGdxDist 		chnget 	"Dist" 
  	kGdxAD 		chnget 	"AmpPar"
  	kGdxDD 		chnget 	"DurPar"
  	kGdxMf 		chnget 	"MinFreq"
  	kGdxMMf		chnget 	"MaxFreq"
  	kGdxAS 		chnget 	"AmpScl"
  	kGdxDS 		chnget 	"DurScl"
  	kNum			chnget 	"Num"

  	aGdx			gendy 	kGdxAMP, kGdxDist, kGdxDist, kGdxAD, kGdxDD, kGdxMf, kGdxMMf, \
            					kGdxAS, kGdxDS, 20, kNum

	aLP			butterlp 	aGdx, 3750
	aOut 			balance 	aLP, aGdx
  				outs	 	aLP, aLP	
 
endin

</CsInstruments>
<CsScore>
 
 
 
;f1   0  8192  10   1 
 
i1 0 $INF 
 
 
 
 </CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
