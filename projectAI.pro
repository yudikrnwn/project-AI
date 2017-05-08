domains 
gejala,prilaku = symbol
nama = string
kelompok1 = kondisi*
kondisi = string

facts
nama(kelompok1)
false(kondisi)

predicates
nondeterm ciri_ciri(prilaku)
nondeterm jawaban(char)
nondeterm ciri(gejala)
nondeterm mulai
nondeterm kelompok(kelompok1)
nondeterm lihat
nondeterm start
nondeterm paranoid
nondeterm schizoid
nondeterm borderline
nondeterm avoindant
nondeterm pilih(char)
nondeterm pilih1(char)
nondeterm ulang(char)
nondeterm ulang1(char)
nondeterm ulang2(char)
nondeterm ulang3(char)
jwb(char,char)

clauses
jwb(A,A):- !.
jwb(_,_):- fail.

nama(["\n\n\n\t\t\t\tYUDI KURNIAWAN         1515015009","\t\t\t\tHARTINI INDRIANI         1515015025","\t\t\t\tCYNTIA JANARI R.S       1515015039"]).

start:-
write("\n","|================================================================================================|"),
write("\n","\t\tS E L A M A T   D A T A N G  P A D A   P R O G R A M   D I A G N O S A   P S I K O P A T\t\t"),
write("\n","|================================================================================================|"),
write("\n","\t\t\t|====================================================|"),
write("\n","\t\t\t\t\t1. lakukan pemeriksaan\t\t"),
write("\n","\t\t\t\t\t2. lihat nama kelompok\t\t"),
write("\n","\t\t\t\t\t3. keluar \t\t\t\t\t"),
write("\n","\t\t\t|====================================================|"),
write("\n\t\t\t\t\t\tpilihan : "),
readchar(A), pilih1(A).
pilih1(A):- jwb(A,'1'), mulai.
pilih1(A):- jwb(A,'2'), lihat.
pilih1(A):- jwb(A,'3'), exit.
pilih1(_):- start.

lihat:-
nama(Kelompok),
kelompok(Kelompok).

mulai:-
write("\n"),
write("\n","\t\t\t|====================================================|"),
write("\n","\t\t\t|\tDIAGNOSA GANGGUAN KEPRIBADIAN ( PSIKOPAT )       |"),
write("\n","\t\t\t|====================================================|"),
write("\n\n","\t\t\t\t\tDiagnosa umum kepribadian    \t"),
write("\n","\t\t\t\t===================================="),
write("\n"),
write("\n","\t\t\t\tsilahkan masukkan nama pasien :"),
readln(Pasien),
ciri_ciri(Prilaku),
write("\n","\t\t\t|=====================================================|"),
write("\n\t\t\t\t",Pasien," memiliki kepribadian ",Prilaku),
write("\n","\t\t\t|=====================================================|"),
write("\n\n"),
write("\n","\t\t\t\t\tINFO LEBIH LANJUT "),
write("\n\n","\t\t\t\t\t1. paranoid"),
write("\n","\t\t\t\t\t2. schizoid"),
write("\n","\t\t\t\t\t3. borderline"),
write("\n","\t\t\t\t\t4. avoindant"),
write("\n","\t\t\t\t\t5. exit"),
readchar(A), pilih(A).
pilih(A):- jwb(A,'1'), paranoid.
pilih(A):- jwb(A,'2'), schizoid.
pilih(A):- jwb(A,'3'), borderline.
pilih(A):- jwb(A,'4'), avoindant.
pilih(A):- jwb(A,'5'), exit.
pilih(_):- mulai.

paranoid:-
write("\n\t\t\tParanoid adalah gangguan kejiwaan yang memiliki rasa ketidakpercayaan terhadap orang "),
write("\n\t\t\tlain dan kecurigaan yang terus-menerus bahwa orang di sekitar Anda memiliki motif jahat."),
write("\n\n\t\t\tsolusi "),
write("\n\t\t\t1. Keluarga pasien bisa diikutsertakan dalam terapi. Tujuannya agar keluarga dapat mendampingi"),
write("\n\t\t\t   pasien dalam menjalani terapi. Dengan demikian, terapi dapat dilakukan lebih efektif dan pasien lebih cepat sembuh."),
write("\n\t\t\t2. Psikoterapi individu Tujuan dari terapi ini adalah  membantu orang dengan gangguan paranoid untuk mengenali diri sendiri dan penyebab gangguan paranoidnya."),
write("\n\t\t\t   Diharapkan, pasien dapat mengendalikan dan memperbaiki pikiran-pikiran yang tidak semestinya."),
write("\n\t\t\t3. Terapi kognitif-perilaku Selain diberi terapi untuk mengenali diri sendiri, pasien juga diberi terapi untuk belajar mengubah pola pikiran dan perilaku."),
write("\n\t\t\t   Jadi, perilaku yang membuatnya terus-menerus merasa cemas, takut, dan curiga, berangsur-angsur akan hilang."),
write("\n\n\t\t\tlakukan pemeriksaan lagi ( y/t ) : "),
readchar(A), ulang(A).
ulang(A):- jwb(A,'y'), mulai.
ulang(A):- jwb(A,'t'), exit.

schizoid:-
write("\n\t\t\tSchizoid adalah gangguan kejiwaan yang menghindari menjalin hubungan dan tidak menunjukkan banyak emosi."),
write("\n\n\t\t\tsolusi "),
write("\n\t\t\t1. Pengobatan yang dilakukan biasanya sesuai dengan jenis gangguan yang dialami. Namun, pengobatan atau terapi yang dijalankan kerap kali menimbulkan konfrontasi."),
write("\n\t\t\t   Hal ini tentu saja disebabkan oleh pemikiran da pola perilaku penderita yang tidak tepat. Terapi akan lebih efektif jika dilakukan oleh teman sebaya atau psikoterapis."),
write("\n\t\t\t2. Terapis berulang-ulang menunjukkan konsekwensi yang tidak diinginkan karena pola pikir dan prilaku penderita, kadang-kadang membuat batas tingkah laku, dan berulang-ulang mengkonfrontasi penderita dengan kenyataan yang ada."),
write("\n\t\t\t3. Keterlibatan keluarga penderita sangat membantu dan sering penting, dorongan dari keompok dapat efektif juga."),
write("\n\t\t\t   Pengobatan kelompok dan keluarga, kelompok tinggal dalam area yang dibuat, dan partisipasi dalam kelompok sosial terapetik atau dalam kelompok itu sendiri dapat menjadi hal yang berharga dalam pengobatan."),
write("\n\n\t\t\tlakukan pemeriksaan lagi ( y/t ) : "),
readchar(A), ulang1(A).
ulang1(A):- jwb(A,'y'), mulai.
ulang1(A):- jwb(A,'t'), exit.

borderline:-
write("\n\t\t\tBorderline adalah gangguan kejiwaan yang memiliki perasaan ketidakstabilan suasana hati dan perasaan rendah diri."),
write("\n\n\t\t\tsolusi "),
write("\n\t\t\t1. meminta pertolongan untuk mengatasi borderline"),
write("\n\t\t\t2. mintalah bantuan dari ahli terapi"),
write("\n\t\t\t3. perhatikan perasaan anda"),
write("\n\t\t\t4. bedakanlah emosi primer dengan emosi skeunder"),
write("\n\n\t\t\tlakukan pemeriksaan lagi ( y/t ) : "),
readchar(A), ulang2(A).
ulang2(A):- jwb(A,'y'), mulai.
ulang2(A):- jwb(A,'t'), exit.

avoindant:-
write("\n\t\t\tAvoindat adalah gangguan kejiwaan yang memiliki perasaan kecemasan sosial yang ekstrem"),
write("\n\n\t\t\tsolusi "),
write("\n\t\t\t1. cobalah anda bersikap lebih lugas, terbuka, jangan terlalu sensitif, janganlah terlalu takut disakiti. anda dapat menjadi seorang pribadi yang kuat, ramah dan menyenangkan ketika bersama orang lain."),
write("\n\t\t\t   janganlah mengganggap terlalu serius dalam mengganggap semua hal. jadikan simple dan rileks maka anda dapat diterima dan menerima semua orang."),
write("\n\t\t\t2. Percayalah pada kemampuan diri anda sendiri akan membuat anda menjadi lebih kuat dan tenang dalam menjalani kehidupan ini."),
write("\n\n\t\t\tlakukan pemeriksaan lagi ( y/t ) : "),
readchar(A), ulang3(A).
ulang3(A):- jwb(A,'y'), mulai.
ulang3(A):- jwb(A,'t'), exit.

ciri(takut):-
write("\n","\t\t\t\tApakah pasien sering merasa takut ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(sedih):-
write("\n","\t\t\t\tApakah pasien sering terlihat sedih ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(tersinggung):-
write("\n","\t\t\t\tApakah pasien cepat tersinggung ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(halusinasi):-
write("\n","\t\t\t\tApakah pasien sering berhalusinasi ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(menyendiri):-
write("\n","\t\t\t\tApakah pasien sering menyendiri dan cenderung tidak memiliki teman ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(emosi_kurang):-
write("\n","\t\t\t\tApakah pasien memiliki emosi yang kurang ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(apatis):-
write("\n","\t\t\t\tApakah pasien bersikap apatis atau tidak peduli dengan lingkungan sekitar ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(merasa_tidak_berguna):-
write("\n","\t\t\t\tApakah pasien sering merasa tidak berguna ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(marah):-
write("\n","\t\t\t\tApakah pasien mudah marah ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(masochist):-
write("\n","\t\t\t\tApakah pasien sering menyakiti diri sendiri ataupun orang lain ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(mood_swing):-
write("\n","\t\t\t\tApakah pasien mengalami perubahan mood ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(malu):-
write("\n","\t\t\t\tApakah pasien sering merasa malu ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(minder):-
write("\n","\t\t\t\tApakah pasien selalu memikirkan kekurangan dirinya ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.

ciri(sensitif):-
write("\n","\t\t\t\tApakah pasien bersikap terlalu sensitif ( y/t ) ?"),
jawaban(Jawab),
Jawab='y'.


ciri_ciri(paranoid):-
ciri(takut),
ciri(sedih),
ciri(tersinggung),
ciri(halusinasi),
ciri(menyendiri).

ciri_ciri(schizoid):-
ciri(emosi_kurang),
ciri(menyendiri),
ciri(apatis),
ciri(halusinasi),
ciri(sedih).

ciri_ciri(border_line):-
ciri(takut),
ciri(marah),
ciri(merasa_tidak_berguna),
ciri(masochist),
ciri(mood_swing),
ciri(minder).

ciri_ciri(avoindant):-
ciri(malu),
ciri(sensitif),
ciri(minder),
ciri(menyendiri).

ciri_ciri(normal).


kelompok([H|T]):-
not(false(H)),
write(H),nl,
kelompok(T).

jawaban(Jawab):-
	readchar(Jawab),
	write(Jawab),nl.


goal
start.