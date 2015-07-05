.class Lcom/yelp/android/ui/util/bu;
.super Ljava/lang/Object;
.source "SectionedAdapter.java"


# annotations
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
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/util/bt;)V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/yelp/android/ui/util/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)Lcom/yelp/android/ui/util/bu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFirst;I)",
            "Lcom/yelp/android/ui/util/bu",
            "<TFirst;>;"
        }
    .end annotation

    .prologue
    .line 681
    iput-object p1, p0, Lcom/yelp/android/ui/util/bu;->a:Ljava/lang/Object;

    .line 682
    iput p2, p0, Lcom/yelp/android/ui/util/bu;->b:I

    .line 683
    return-object p0
.end method
