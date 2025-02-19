
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  Future<void> unit() async {
  final supabase = await Supabase.initialize(
    url: 'https://mfapfsbsmryrieseawuv.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mYXBmc2JzbXJ5cmllc2Vhd3V2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzg2NzA5MjQsImV4cCI6MjA1NDI0NjkyNH0.ED39m16EpIU1JYzDS4I7EimOtnwVTyoPQXBBBA-lFiY',
  );
  final client = supabase.client;
  GetIt.I.registerSingleton<SupabaseClient>(client);
  }
}