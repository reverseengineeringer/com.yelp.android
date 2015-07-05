.class public abstract Lcom/yelp/android/ui/util/bc;
.super Ljava/lang/Object;
.source "MediaOpener.java"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/ui/util/bc;->a:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;I)V
.end method
