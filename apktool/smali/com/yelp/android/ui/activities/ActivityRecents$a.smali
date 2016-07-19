.class public final Lcom/yelp/android/ui/activities/ActivityRecents$a;
.super Lcom/yelp/android/util/q;
.source "ActivityRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityRecents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/q",
        "<",
        "Lcom/yelp/android/ui/activities/ActivityRecents;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/ActivityRecents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/yelp/android/util/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/yelp/android/ui/activities/ActivityRecents;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/yelp/android/ui/activities/ActivityRecents;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents$a;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    .line 279
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->d()Lcom/yelp/android/database/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents$a;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/ActivityRecents;->a(Lcom/yelp/android/ui/activities/ActivityRecents;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents$a;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityRecents;->a(Lcom/yelp/android/ui/activities/ActivityRecents;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents$a;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRecents;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRecents$a;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRecents$a;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/ActivityRecents;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const v3, 0x7f070291

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityRecents;->a(Lcom/yelp/android/ui/activities/ActivityRecents;Landroid/widget/AdapterView;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents$a;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRecents;->disableLoading()V

    .line 294
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    check-cast p1, [Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/ActivityRecents$a;->a([Lcom/yelp/android/ui/activities/ActivityRecents;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 271
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/ActivityRecents$a;->a(Ljava/util/ArrayList;)V

    return-void
.end method
