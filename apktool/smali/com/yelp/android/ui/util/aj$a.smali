.class Lcom/yelp/android/ui/util/aj$a;
.super Ljava/lang/Object;
.source "SectionedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<First:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFirst;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/util/aj$1;)V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/yelp/android/ui/util/aj$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)Lcom/yelp/android/ui/util/aj$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFirst;I)",
            "Lcom/yelp/android/ui/util/aj$a",
            "<TFirst;>;"
        }
    .end annotation

    .prologue
    .line 699
    iput-object p1, p0, Lcom/yelp/android/ui/util/aj$a;->a:Ljava/lang/Object;

    .line 700
    iput p2, p0, Lcom/yelp/android/ui/util/aj$a;->b:I

    .line 701
    return-object p0
.end method
