import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                
                Text("Hoş Geldin!")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 10)
                
                // 1. Satır
                HStack(spacing: 15) {
                    newsCard(title: "🎓 Okul Haberleri", items: [
                        "Final haftası 20 Mayıs'ta.",
                        "Mezuniyet 12 Haziran'da."
                    ])
                    
                    newsCard(title: "👥 Kulüp Duyuruları", items: [
                        "Yazılım kulübü etkinlik düzenliyor.",
                        "Tiyatro kulübü seçmeleri başladı."
                    ])
                }
                
                // 2. Satır
                HStack(spacing: 15) {
                    newsCard(title: "📚 Ders Notları", items: [
                        "Veri Yapıları güncellendi.",
                        "Fizik quiz cevapları yüklendi."
                    ])
                    
                    newsCard(title: "📅 Etkinlik Takvimi", items: [
                        "Kariyer günü 30 Mayıs.",
                        "Seminer: Girişimcilik 24 Mayıs."
                    ])
                }
                
                // 3. Satır
                HStack(spacing: 15) {
                    newsCard(title: "📌 Duyurular", items: [
                        "Kütüphane saatleri değişti.",
                        "Yeni menü yayınlandı."
                    ])
                    
                    newsCard(title: "🔔 Bildirimler", items: [
                        "Sınav salonları değişti.",
                        "OBS sisteminde bakım var."
                    ])
                }
            }
            .padding()
        }
        .navigationTitle("Güncel Haberler")
    }
    
    func newsCard(title: String, items: [String]) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            
            ForEach(items.prefix(2), id: \.self) { item in
                Text("• \(item)")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.9))
            }
        }
        .padding()
        .frame(width: 180, height: 195, alignment: .topLeading) // Eşit boyut
        .background(Color.blue)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}

