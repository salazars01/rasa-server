from flask import Flask, jsonify

app = Flask(__name__)

data = {
    "id": 1,
    "text": "Kami adalah sebuah perusahaan infrastruktur jaringan yang berfokus pada kabel fiber optic...",
    "coverages": {
        "Bekasi": [
            "Bab. Bekasi (Kec. Setu, Cibarusah, Cibuntu, Cibening, Lubang Buaya, Cibitung, Tambun, Cijengkol, Burangkeng)",
            "Kota Bekasi (Kranji, Pekayon, Jati Asih, Mustika Jaya, Mustika Sari, Margahayu, Bekasi Timur, Bekasi Barat, Pondok Gede, Jatiwaringin, Bantargerbang)"
        ],
        "DKI Jakarta": [
            "Jakarta Timur (Cibubur, Pondok Gede, Hankam, Cempaka Mas, Cempaka Putih Pondok Kopi, Pondok Kelapa, Klender)"
        ]
    }
}

@app.route('/', methods=['GET'])
def get_data():
    return jsonify(data)

if __name__ == '__main__':
    app.run(debug=True, port=5000)

