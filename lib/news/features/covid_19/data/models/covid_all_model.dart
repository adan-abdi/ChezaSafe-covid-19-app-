// import 'package:covid_19_info/features/covid_19/domain/entities/covid_all.dart';
import 'package:covid_tracker/news/features/covid_19/domain/entities/covid_all.dart';
import 'package:flutter/material.dart';


class CovidAllModel extends CovidAll {
  int _cases;
  int _deaths;
  int _recovered;

  CovidAllModel({
    @required int cases,
    @required int deaths,
    @required int recovered,
  }) : super(cases: cases, deaths: deaths, recovered: recovered) {
    this._cases = cases;
    this._deaths = deaths;
    this._recovered = recovered;
  }

  factory CovidAllModel.fromJson(Map<String, dynamic> covid) {
    return CovidAllModel(
      cases: covid['cases'],
      deaths: covid['deaths'],
      recovered: covid['recovered'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cases': super.getCases,
      'deaths': super.getDeaths,
      'recovered': super.getRecovered,
    };
  }
}
