.class Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$6;
.super Ljava/lang/Object;
.source "ActivityLocalIssue.java"

# interfaces
.implements Lcom/yelp/android/util/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$6;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$6;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->f(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Z)V

    .line 446
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$6;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 447
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$6;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 448
    return-void
.end method
