actor Calculator {
    // Hafıza değişkeni
    var memory: Float = 0.0;

    // Üs alma işlemi: base üzeri exponent
    public shared func power(base: Float, exponent: Int): async Float {
        var result: Float = 1.0;
        var count: Int = 0;

        while (count < exponent) {
            result := result * base;
            count := count + 1;
        };

        return result;
    };

    // Toplama işlemi
    public shared func add(a: Float, b: Float): async Float {
        return a + b;
    };

    // Çıkarma işlemi
    public shared func subtract(a: Float, b: Float): async Float {
        return a - b;
    };

    // Çarpma işlemi
    public shared func multiply(a: Float, b: Float): async Float {
        return a * b;
    };

    // Bölme işlemi
    public shared func divide(a: Float, b: Float): async ?Float {
        if (b != 0.0) {
            return ?(a / b);
        } else {
            return null; // Sıfıra bölme hatası
        };
    };

    // Hafızaya veri kaydetme
    public shared func saveToMemory(value: Float): async () {
        memory := value;
    };

    // Hafızayı temizleme
    public shared func clearMemory(): async () {
        memory := 0.0;
    };

    // Hafızadaki veriyi alma
    public shared func recallMemory(): async Float {
        return memory;
    };
};
