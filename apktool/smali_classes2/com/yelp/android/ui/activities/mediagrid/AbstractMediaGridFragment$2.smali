.class Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$2;
.super Ljava/lang/Object;
.source "AbstractMediaGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;)Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;->a(Lcom/yelp/android/serializable/YelpBusiness;Z)V

    .line 213
    return-void
.end method
