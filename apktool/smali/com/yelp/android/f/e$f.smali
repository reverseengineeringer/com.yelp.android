.class Lcom/yelp/android/f/e$f;
.super Lcom/yelp/android/f/e$d;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field public static final a:Lcom/yelp/android/f/e$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/yelp/android/f/e$f;

    invoke-direct {v0}, Lcom/yelp/android/f/e$f;-><init>()V

    sput-object v0, Lcom/yelp/android/f/e$f;->a:Lcom/yelp/android/f/e$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/f/e$d;-><init>(Lcom/yelp/android/f/e$c;)V

    .line 246
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 250
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/f/f;->a(Ljava/util/Locale;)I

    move-result v1

    .line 251
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
