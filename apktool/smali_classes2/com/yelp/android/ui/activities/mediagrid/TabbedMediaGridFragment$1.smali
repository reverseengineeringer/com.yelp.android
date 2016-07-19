.class Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$1;
.super Ljava/lang/Object;
.source "TabbedMediaGridFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yelp/android/serializable/MediaCategory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/MediaCategory;Lcom/yelp/android/serializable/MediaCategory;)I
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaCategory;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MediaCategory;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 174
    check-cast p1, Lcom/yelp/android/serializable/MediaCategory;

    check-cast p2, Lcom/yelp/android/serializable/MediaCategory;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$1;->a(Lcom/yelp/android/serializable/MediaCategory;Lcom/yelp/android/serializable/MediaCategory;)I

    move-result v0

    return v0
.end method
