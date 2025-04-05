import 'core/utils/observer.dart';
import 'core/utils/setup_service.dart';
import 'features/home/data/repos/home_repo_impl.dart';
import 'features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'features/home/presentation/manager/cubit/featured_books_cubit.dart';
import 'features/home/presentation/manager/cubit/fetch_newest_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'constants.dart';
import 'core/utils/app_router.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = Observer();
  runApp(
    const ReadingHub(),
  );
}

class ReadingHub extends StatelessWidget {
  const ReadingHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(getIt.get<HomeRepoImpl>()),
            )..fetchFeaturedBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return FetchNewestBooksCubit(
                FetchNewestBooksUseCase(getIt.get<HomeRepoImpl>()))..fetchNewestBooks();
          },
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


