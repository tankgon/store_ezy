// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:mulstore/app/app.dart';
import 'package:mulstore/bootstrap.dart';
import 'package:mulstore/flavors.dart';

void main() {
  F.appFlavor = Flavor.PRODUCTION;
  bootstrap(() => const App());
}
