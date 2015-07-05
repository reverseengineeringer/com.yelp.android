.class Lcom/yelp/android/ui/t;
.super Ljava/lang/Object;
.source "ActivityMonocle.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/r;)V
    .locals 0

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/yelp/android/ui/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 949
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    const/4 v0, 0x1

    .line 952
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
