.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$4;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

.field final synthetic b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V
    .locals 0

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$4;->b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$4;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$4;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->enableLoading()V

    .line 1276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$4;->b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Lcom/yelp/android/appdata/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->d()Z

    .line 1277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$4;->b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Lcom/yelp/android/ui/activities/search/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/f;->clear()V

    .line 1278
    return-void
.end method
