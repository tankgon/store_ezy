// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:ez_store/app/app.dart';
import 'package:ez_store/bootstrap.dart';

import 'package:ez_store/flavors.dart';

void main() {
  F.appFlavor = Flavor.DEVELOPMENT;
  bootstrap(() => const App());
}
