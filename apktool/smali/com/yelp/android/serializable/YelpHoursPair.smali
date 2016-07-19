.class public Lcom/yelp/android/serializable/YelpHoursPair;
.super Lcom/yelp/android/serializable/_YelpHoursPair;
.source "YelpHoursPair.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/YelpHoursPair;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/YelpHoursPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/serializable/YelpHoursPair$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpHoursPair$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpHoursPair;->CREATOR:Lcom/yelp/android/serializable/a;

    .line 48
    sget-object v0, Lcom/yelp/android/serializable/YelpHoursPair;->CREATOR:Lcom/yelp/android/serializable/a;

    sput-object v0, Lcom/yelp/android/serializable/YelpHoursPair;->a:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpHoursPair;-><init>()V

    .line 16
    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpHoursPair;-><init>()V

    .line 19
    iput p1, p0, Lcom/yelp/android/serializable/YelpHoursPair;->b:I

    .line 20
    iput p2, p0, Lcom/yelp/android/serializable/YelpHoursPair;->c:I

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 102
    iget v1, p0, Lcom/yelp/android/serializable/YelpHoursPair;->b:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 103
    iget v1, p0, Lcom/yelp/android/serializable/YelpHoursPair;->c:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 104
    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpHoursPair;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpHoursPair;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic c()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpHoursPair;->c()I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpHoursPair;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/YelpHoursPair;

    if-nez v2, :cond_3

    move v0, v1

    .line 68
    goto :goto_0

    .line 70
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/YelpHoursPair;

    .line 71
    iget v2, p0, Lcom/yelp/android/serializable/YelpHoursPair;->c:I

    iget v3, p1, Lcom/yelp/android/serializable/YelpHoursPair;->c:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 72
    goto :goto_0

    .line 74
    :cond_4
    iget v2, p0, Lcom/yelp/android/serializable/YelpHoursPair;->b:I

    iget v3, p1, Lcom/yelp/android/serializable/YelpHoursPair;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 75
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 52
    .line 54
    iget v0, p0, Lcom/yelp/android/serializable/YelpHoursPair;->c:I

    add-int/lit8 v0, v0, 0x1f

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yelp/android/serializable/YelpHoursPair;->b:I

    add-int/2addr v0, v1

    .line 56
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x7

    const/4 v4, 0x2

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "E hh:mma"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 85
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 86
    iget v2, p0, Lcom/yelp/android/serializable/YelpHoursPair;->b:I

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 89
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 90
    iget v3, p0, Lcom/yelp/android/serializable/YelpHoursPair;->c:I

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpHoursPair;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
