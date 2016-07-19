.class public Lcom/yelp/android/appdata/experiment/d;
.super Ljava/lang/Object;
.source "DoubleStringValueStorage.java"

# interfaces
.implements Lcom/yelp/android/appdata/experiment/i;


# static fields
.field public static a:Lcom/yelp/android/appdata/experiment/d;

.field public static final b:Lcom/yelp/android/appdata/experiment/i;


# instance fields
.field private final c:Lcom/yelp/android/appdata/experiment/i;

.field private final d:Lcom/yelp/android/appdata/experiment/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lcom/yelp/android/appdata/experiment/d;

    sget-object v1, Lcom/yelp/android/appdata/experiment/h;->a:Lcom/yelp/android/appdata/experiment/h;

    sget-object v2, Lcom/yelp/android/appdata/experiment/h;->b:Lcom/yelp/android/appdata/experiment/h;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/d;-><init>(Lcom/yelp/android/appdata/experiment/i;Lcom/yelp/android/appdata/experiment/i;)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/d;->a:Lcom/yelp/android/appdata/experiment/d;

    .line 18
    new-instance v0, Lcom/yelp/android/appdata/experiment/d;

    sget-object v1, Lcom/yelp/android/appdata/experiment/h;->a:Lcom/yelp/android/appdata/experiment/h;

    sget-object v2, Lcom/yelp/android/appdata/experiment/h;->c:Lcom/yelp/android/appdata/experiment/h;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/d;-><init>(Lcom/yelp/android/appdata/experiment/i;Lcom/yelp/android/appdata/experiment/i;)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/d;->b:Lcom/yelp/android/appdata/experiment/i;

    return-void
.end method

.method private constructor <init>(Lcom/yelp/android/appdata/experiment/i;Lcom/yelp/android/appdata/experiment/i;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/appdata/experiment/d;->c:Lcom/yelp/android/appdata/experiment/i;

    .line 29
    iput-object p2, p0, Lcom/yelp/android/appdata/experiment/d;->d:Lcom/yelp/android/appdata/experiment/i;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/appdata/experiment/d;->c:Lcom/yelp/android/appdata/experiment/i;

    invoke-interface {v0, p1}, Lcom/yelp/android/appdata/experiment/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/yelp/android/appdata/experiment/d;->d:Lcom/yelp/android/appdata/experiment/i;

    invoke-interface {v0, p1}, Lcom/yelp/android/appdata/experiment/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/appdata/experiment/d;->d:Lcom/yelp/android/appdata/experiment/i;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/appdata/experiment/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/appdata/experiment/d;->d:Lcom/yelp/android/appdata/experiment/i;

    invoke-interface {v0, p1}, Lcom/yelp/android/appdata/experiment/i;->a(Ljava/util/Map;)V

    .line 35
    return-void
.end method
