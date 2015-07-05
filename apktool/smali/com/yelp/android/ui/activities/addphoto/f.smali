.class Lcom/yelp/android/ui/activities/addphoto/f;
.super Ljava/lang/Object;
.source "AddCaptionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/f;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 236
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 237
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 239
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/f;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->c(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string/jumbo v2, "caption"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoCaptionSuggested:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 243
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 248
    return-void
.end method
