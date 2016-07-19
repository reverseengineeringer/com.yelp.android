.class Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$1;
.super Ljava/lang/Object;
.source "AbstractMediaGridFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 196
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;)Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/mediagrid/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;

    iget v5, v4, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->e:I

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;II)V

    .line 205
    return-void
.end method
