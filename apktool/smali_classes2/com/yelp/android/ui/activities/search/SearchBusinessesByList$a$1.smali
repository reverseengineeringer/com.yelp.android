.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$1;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;II)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$1;->d:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iput p3, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$1;->b:I

    iput p4, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$1;->b:I

    iget v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$1;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelectionFromTop(II)V

    .line 1241
    return-void
.end method
