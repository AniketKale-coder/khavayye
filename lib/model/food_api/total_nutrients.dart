import 'package:flutter/foundation.dart';

import 'ca.dart';
import 'chocdf.dart';
import 'chole.dart';
import 'enerc_kcal.dart';
import 'fams.dart';
import 'fapu.dart';
import 'fasat.dart';
import 'fat.dart';
import 'fatrn.dart';
import 'fe.dart';
import 'fibtg.dart';
import 'folac.dart';
import 'foldfe.dart';
import 'folfd.dart';
import 'k.dart';
import 'mg.dart';
import 'na.dart';
import 'nia.dart';
import 'p.dart';
import 'procnt.dart';
import 'ribf.dart';
import 'sugar.dart';
import 'thia.dart';
import 'tocpha.dart';
import 'vita_rae.dart';
import 'vitb12.dart';
import 'vitb6_a.dart';
import 'vitc.dart';
import 'vitd.dart';
import 'vitk1.dart';
import 'water.dart';
import 'zn.dart';

@immutable
class TotalNutrients {
  final EnercKcal? enercKcal;
  final Fat? fat;
  final Fasat? fasat;
  final Fatrn? fatrn;
  final Fams? fams;
  final Fapu? fapu;
  final Chocdf? chocdf;
  final Fibtg? fibtg;
  final Sugar? sugar;
  final Procnt? procnt;
  final Chole? chole;
  final Na? na;
  final Ca? ca;
  final Mg? mg;
  final K? k;
  final Fe? fe;
  final Zn? zn;
  final P? p;
  final VitaRae? vitaRae;
  final Vitc? vitc;
  final Thia? thia;
  final Ribf? ribf;
  final Nia? nia;
  final Vitb6A? vitb6A;
  final Foldfe? foldfe;
  final Folfd? folfd;
  final Folac? folac;
  final Vitb12? vitb12;
  final Vitd? vitd;
  final Tocpha? tocpha;
  final Vitk1? vitk1;
  final Water? water;

  const TotalNutrients({
    this.enercKcal,
    this.fat,
    this.fasat,
    this.fatrn,
    this.fams,
    this.fapu,
    this.chocdf,
    this.fibtg,
    this.sugar,
    this.procnt,
    this.chole,
    this.na,
    this.ca,
    this.mg,
    this.k,
    this.fe,
    this.zn,
    this.p,
    this.vitaRae,
    this.vitc,
    this.thia,
    this.ribf,
    this.nia,
    this.vitb6A,
    this.foldfe,
    this.folfd,
    this.folac,
    this.vitb12,
    this.vitd,
    this.tocpha,
    this.vitk1,
    this.water,
  });

  @override
  String toString() {
    return 'TotalNutrients(enercKcal: $enercKcal, fat: $fat, fasat: $fasat, fatrn: $fatrn, fams: $fams, fapu: $fapu, chocdf: $chocdf, fibtg: $fibtg, sugar: $sugar, procnt: $procnt, chole: $chole, na: $na, ca: $ca, mg: $mg, k: $k, fe: $fe, zn: $zn, p: $p, vitaRae: $vitaRae, vitc: $vitc, thia: $thia, ribf: $ribf, nia: $nia, vitb6A: $vitb6A, foldfe: $foldfe, folfd: $folfd, folac: $folac, vitb12: $vitb12, vitd: $vitd, tocpha: $tocpha, vitk1: $vitk1, water: $water)';
  }

  factory TotalNutrients.fromJson(Map<String, dynamic> json) {
    return TotalNutrients(
      enercKcal: json['ENERC_KCAL'] == null
          ? null
          : EnercKcal.fromJson(json['ENERC_KCAL'] as Map<String, dynamic>),
      fat: json['FAT'] == null
          ? null
          : Fat.fromJson(json['FAT'] as Map<String, dynamic>),
      fasat: json['FASAT'] == null
          ? null
          : Fasat.fromJson(json['FASAT'] as Map<String, dynamic>),
      fatrn: json['FATRN'] == null
          ? null
          : Fatrn.fromJson(json['FATRN'] as Map<String, dynamic>),
      fams: json['FAMS'] == null
          ? null
          : Fams.fromJson(json['FAMS'] as Map<String, dynamic>),
      fapu: json['FAPU'] == null
          ? null
          : Fapu.fromJson(json['FAPU'] as Map<String, dynamic>),
      chocdf: json['CHOCDF'] == null
          ? null
          : Chocdf.fromJson(json['CHOCDF'] as Map<String, dynamic>),
      fibtg: json['FIBTG'] == null
          ? null
          : Fibtg.fromJson(json['FIBTG'] as Map<String, dynamic>),
      sugar: json['SUGAR'] == null
          ? null
          : Sugar.fromJson(json['SUGAR'] as Map<String, dynamic>),
      procnt: json['PROCNT'] == null
          ? null
          : Procnt.fromJson(json['PROCNT'] as Map<String, dynamic>),
      chole: json['CHOLE'] == null
          ? null
          : Chole.fromJson(json['CHOLE'] as Map<String, dynamic>),
      na: json['NA'] == null
          ? null
          : Na.fromJson(json['NA'] as Map<String, dynamic>),
      ca: json['CA'] == null
          ? null
          : Ca.fromJson(json['CA'] as Map<String, dynamic>),
      mg: json['MG'] == null
          ? null
          : Mg.fromJson(json['MG'] as Map<String, dynamic>),
      k: json['K'] == null
          ? null
          : K.fromJson(json['K'] as Map<String, dynamic>),
      fe: json['FE'] == null
          ? null
          : Fe.fromJson(json['FE'] as Map<String, dynamic>),
      zn: json['ZN'] == null
          ? null
          : Zn.fromJson(json['ZN'] as Map<String, dynamic>),
      p: json['P'] == null
          ? null
          : P.fromJson(json['P'] as Map<String, dynamic>),
      vitaRae: json['VITA_RAE'] == null
          ? null
          : VitaRae.fromJson(json['VITA_RAE'] as Map<String, dynamic>),
      vitc: json['VITC'] == null
          ? null
          : Vitc.fromJson(json['VITC'] as Map<String, dynamic>),
      thia: json['THIA'] == null
          ? null
          : Thia.fromJson(json['THIA'] as Map<String, dynamic>),
      ribf: json['RIBF'] == null
          ? null
          : Ribf.fromJson(json['RIBF'] as Map<String, dynamic>),
      nia: json['NIA'] == null
          ? null
          : Nia.fromJson(json['NIA'] as Map<String, dynamic>),
      vitb6A: json['VITB6A'] == null
          ? null
          : Vitb6A.fromJson(json['VITB6A'] as Map<String, dynamic>),
      foldfe: json['FOLDFE'] == null
          ? null
          : Foldfe.fromJson(json['FOLDFE'] as Map<String, dynamic>),
      folfd: json['FOLFD'] == null
          ? null
          : Folfd.fromJson(json['FOLFD'] as Map<String, dynamic>),
      folac: json['FOLAC'] == null
          ? null
          : Folac.fromJson(json['FOLAC'] as Map<String, dynamic>),
      vitb12: json['VITB12'] == null
          ? null
          : Vitb12.fromJson(json['VITB12'] as Map<String, dynamic>),
      vitd: json['VITD'] == null
          ? null
          : Vitd.fromJson(json['VITD'] as Map<String, dynamic>),
      tocpha: json['TOCPHA'] == null
          ? null
          : Tocpha.fromJson(json['TOCPHA'] as Map<String, dynamic>),
      vitk1: json['VITK1'] == null
          ? null
          : Vitk1.fromJson(json['VITK1'] as Map<String, dynamic>),
      water: json['WATER'] == null
          ? null
          : Water.fromJson(json['WATER'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'ENERC_KCAL': enercKcal?.toJson(),
        'FAT': fat?.toJson(),
        'FASAT': fasat?.toJson(),
        'FATRN': fatrn?.toJson(),
        'FAMS': fams?.toJson(),
        'FAPU': fapu?.toJson(),
        'CHOCDF': chocdf?.toJson(),
        'FIBTG': fibtg?.toJson(),
        'SUGAR': sugar?.toJson(),
        'PROCNT': procnt?.toJson(),
        'CHOLE': chole?.toJson(),
        'NA': na?.toJson(),
        'CA': ca?.toJson(),
        'MG': mg?.toJson(),
        'K': k?.toJson(),
        'FE': fe?.toJson(),
        'ZN': zn?.toJson(),
        'P': p?.toJson(),
        'VITA_RAE': vitaRae?.toJson(),
        'VITC': vitc?.toJson(),
        'THIA': thia?.toJson(),
        'RIBF': ribf?.toJson(),
        'NIA': nia?.toJson(),
        'VITB6A': vitb6A?.toJson(),
        'FOLDFE': foldfe?.toJson(),
        'FOLFD': folfd?.toJson(),
        'FOLAC': folac?.toJson(),
        'VITB12': vitb12?.toJson(),
        'VITD': vitd?.toJson(),
        'TOCPHA': tocpha?.toJson(),
        'VITK1': vitk1?.toJson(),
        'WATER': water?.toJson(),
      };

  TotalNutrients copyWith({
    EnercKcal? enercKcal,
    Fat? fat,
    Fasat? fasat,
    Fatrn? fatrn,
    Fams? fams,
    Fapu? fapu,
    Chocdf? chocdf,
    Fibtg? fibtg,
    Sugar? sugar,
    Procnt? procnt,
    Chole? chole,
    Na? na,
    Ca? ca,
    Mg? mg,
    K? k,
    Fe? fe,
    Zn? zn,
    P? p,
    VitaRae? vitaRae,
    Vitc? vitc,
    Thia? thia,
    Ribf? ribf,
    Nia? nia,
    Vitb6A? vitb6A,
    Foldfe? foldfe,
    Folfd? folfd,
    Folac? folac,
    Vitb12? vitb12,
    Vitd? vitd,
    Tocpha? tocpha,
    Vitk1? vitk1,
    Water? water,
  }) {
    return TotalNutrients(
      enercKcal: enercKcal ?? this.enercKcal,
      fat: fat ?? this.fat,
      fasat: fasat ?? this.fasat,
      fatrn: fatrn ?? this.fatrn,
      fams: fams ?? this.fams,
      fapu: fapu ?? this.fapu,
      chocdf: chocdf ?? this.chocdf,
      fibtg: fibtg ?? this.fibtg,
      sugar: sugar ?? this.sugar,
      procnt: procnt ?? this.procnt,
      chole: chole ?? this.chole,
      na: na ?? this.na,
      ca: ca ?? this.ca,
      mg: mg ?? this.mg,
      k: k ?? this.k,
      fe: fe ?? this.fe,
      zn: zn ?? this.zn,
      p: p ?? this.p,
      vitaRae: vitaRae ?? this.vitaRae,
      vitc: vitc ?? this.vitc,
      thia: thia ?? this.thia,
      ribf: ribf ?? this.ribf,
      nia: nia ?? this.nia,
      vitb6A: vitb6A ?? this.vitb6A,
      foldfe: foldfe ?? this.foldfe,
      folfd: folfd ?? this.folfd,
      folac: folac ?? this.folac,
      vitb12: vitb12 ?? this.vitb12,
      vitd: vitd ?? this.vitd,
      tocpha: tocpha ?? this.tocpha,
      vitk1: vitk1 ?? this.vitk1,
      water: water ?? this.water,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! TotalNutrients) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      enercKcal.hashCode ^
      fat.hashCode ^
      fasat.hashCode ^
      fatrn.hashCode ^
      fams.hashCode ^
      fapu.hashCode ^
      chocdf.hashCode ^
      fibtg.hashCode ^
      sugar.hashCode ^
      procnt.hashCode ^
      chole.hashCode ^
      na.hashCode ^
      ca.hashCode ^
      mg.hashCode ^
      k.hashCode ^
      fe.hashCode ^
      zn.hashCode ^
      p.hashCode ^
      vitaRae.hashCode ^
      vitc.hashCode ^
      thia.hashCode ^
      ribf.hashCode ^
      nia.hashCode ^
      vitb6A.hashCode ^
      foldfe.hashCode ^
      folfd.hashCode ^
      folac.hashCode ^
      vitb12.hashCode ^
      vitd.hashCode ^
      tocpha.hashCode ^
      vitk1.hashCode ^
      water.hashCode;
}
