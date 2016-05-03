require 'test/unit'
require_relative '../lib/words_path_finder'

class WordsPathFinderTest < Test::Unit::TestCase
  def test_it_returns_empty_path
    finder = WordsPathFinder.new %w('cat', 'cag', 'dag', 'dog')
    assert_true finder.find(nil, nil).empty?
    assert_true finder.find('', '').empty?
    assert_true finder.find('', '').empty?
    assert_true finder.find('cat', '').empty?
    assert_true finder.find('', 'dog').empty?
  end

  def test_it_returns_the_shortest_path_find_words
    finder = WordsPathFinder.new(create_dictionary)
    assert_equal %w(ago age), finder.find('ago', 'age')
    assert_equal %w(dad dod dog), finder.find('dad', 'dog')
    assert_equal %w(cat cag dag dog), finder.find('cat', 'dog')
  end

  def create_dictionary
    %w(
  aal aam aba abb abu aby ace ach act add ade ado ady adz aer aes aft aga
  age ago agy aha aho ahu aid ail aim air ait aka ake ako aku ala alb ale alf
  alk all aln alo alp alt aly ama ame ami amt amy ana and ani ann ant any apa
  ape apt ara arc are ark arm arn art aru arx ary ase ash ask asp ass ast ate
  auh auk aum ava ave avo awa awd awe awl awn axe aye ayu azo baa bac bad bae
  bag bah bal bam ban bap bar bas bat baw bay bed bee beg bel ben ber bes bet
  bey bib bid big bin bis bit biz blo boa bob bod bog bom bon boo bop bor bot
  bow boy bra bub bud bug bum bun bur bus but buy bye cab cad cag cal cam can
  cap car cat caw cay cee cep cha che chi cho cig cit cly cob cod coe cog col
  con coo cop cor cos cot cow cox coy coz cro cry cub cud cue cum cup cur cut
  cwm cyp dab dad dae dag dah dak dal dam dan dao dap dar das daw day deb dee
  deg den dev dew dey dha dhu dib did die dig dim din dip dis dit div dob doc
  dod doe dog dom don dop dor dos dot dow dry dub dud due dug dum dun duo dup
  dux dye ean ear eat ebb edh eel eer eft egg ego eke elb eld elf elk ell elm
  els elt eme emu end ens eon era erd ere erg err ers ess eta eve ewe eye eyn
  fad fae fag fam fan far fat fay fed fee fei fen fet feu few fey fez fib fid
  fie fig fin fip fir fit fix flu fly fob fod foe fog foo fop for fot fou fow
  fox foy fra fro fry fub fud fum fun fur fut gab gad gag gaj gal gam gan gap
  gar gas gat gau gaw gay gaz ged gee gel gem gen geo ger get gey gez gib gid
  gie gif gig gim gin gio gip git gnu goa gob god gog goi gol gon goo gor gos
  got goy gra grr gud gue gul gum gun gup gur gut guy guz gym gyn gyp had hag
  hah hak ham han hao hap hat hau haw hay hei hem hen hep her het hew hex hey
  hia hic hie him hin hip his hit hob hod hoe hog hoi hop hot how hox hoy hub
  hud hue hug huh hum hup hut hyp iao iba ice ich icy ide ife ihi ilk ill imi
  imp imu ing ink inn ion ire irk ism iso ist its iva ivy iwa iyo jab jag jam
  jap jar jaw jay jed jet jib jig job joe jog jot jow joy jud jug jut kai kan
  kat kay kea keb ked kef keg ken kep ket kex key khu kil kim kin kip kit koa
  kob koi kon kop kor kos kou kra kyl lab lac lad lag lai lak lam lan lap lar
  las lat law lax lay lea led lee leg lei lek let leu lev lew ley lid lie lim
  lin lip lis lit loa lob lod lof log loo lop lot low lox loy lue lug lum lut
  lux lye lys mac mad mae mag mal man mao map mar mas mat mau maw may mel mem
  men met mew mho mib mid mig mil mim min mir mix mob mog mon moo mop mor mot
  mou mow moy mud mug mum mun mux naa nab nae nag nak nam nan nap nar nat naw
  nay nea neb nee nef nei neo nep net new nib nid nig nil nim nip nit nix noa
  nob nod nog non nor not now noy nth nub nul nun nut nye oaf oak oam oar oat
  obe obi och ock oda odd ode oer oes off oft ohm oho oii oil oka oki old olm
  ona one ons ope opt ora orb orc ore orf ort ory ose ouf our out ova owd owe
  owk owl own oxy pac pad pah pal pam pan pap par pat pau paw pax pay pea ped
  pee peg pen pep per pes pet pew phi pho phu pia pic pie pig pik pin pip pir
  pit pix ply pob pod poe poh poi pol pom pon pop pot pow pox poy pro pry psi
  pst pua pub pud pug pul pun pup pur pus put pya pyr pyx qua quo rab rad rag
  rah raj ram ran rap ras rat raw rax ray rea reb red ree ref reg reh rel rep
  ret rev rex rhe rho ria rib rid rie rig rim rio rip rit rix rob roc rod roe
  rog roi rot row rox rub rud rue rug rum run rut rux rye saa sab sac sad sag
  sah sai saj sal sam san sao sap sar sat saw sax say sea sec see seg sen ser
  set sew sex sey sha she shi sho shy sib sic sie sig sil sin sip sir sis sit
  six ski sky sla sly sma sny sob soc sod soe sog soh sok sol son sop sot sou
  sov sow soy spa spy sri ssu sty sub sud sue sum sun sup sur suz swa sye taa
  tab tad tae tag tai taj tal tam tan tao tap tar tat tau tav taw tax tay tch
  tck tea tec ted tee teg ten tew tez tha the tho thy tib tic tid tie tig til
  tin tip tit tji toa tod toe tog toi tol ton too top tor tot tou tow tox toy
  tra tri try tst tua tub tue tug tui tum tun tup tur tut tux twa two tye tyg
  tyt ubi udo ugh uji uke ula ule ull ulu ume ump umu upo ura urd ure urf urn
  use ush ust uta utu uva vag van vas vat vau vee vei vet vex via vie vim vis
  voe vog vol vow vug vum wab wad wae wag wah wan wap war was wat waw wax way
  web wed wee wem wen wer wet wey wha who why wid wig wim win wir wis wit wiz
  wob wod woe wog won woo wop wot wow woy wro wry wud wun wup wur wut wye wyn
  yad yah yak yam yan yap yar yas yat yaw yea yed yee yen yeo yep yer yes yet
  yew yex yez yin yip yis yoe yoi yok yom yon yor yot you yow yox yoy yuh yus
  zac zad zag zak zar zat zax zed zee zel zer zig zip zoa zoo)
  end
end
