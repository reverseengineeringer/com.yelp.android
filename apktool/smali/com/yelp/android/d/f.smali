.class public Lcom/yelp/android/d/f;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# static fields
.field public static final a:Ljava/util/Locale;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/d/f;->a:Ljava/util/Locale;

    .line 116
    const-string/jumbo v0, "Arab"

    sput-object v0, Lcom/yelp/android/d/f;->b:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "Hebr"

    sput-object v0, Lcom/yelp/android/d/f;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 76
    if-eqz p0, :cond_2

    sget-object v0, Lcom/yelp/android/d/f;->a:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/yelp/android/d/f;->b(Ljava/util/Locale;)I

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 81
    :cond_0
    sget-object v1, Lcom/yelp/android/d/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/yelp/android/d/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/Locale;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_0
    return v0

    .line 106
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
