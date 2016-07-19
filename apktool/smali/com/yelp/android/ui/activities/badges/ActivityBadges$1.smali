.class Lcom/yelp/android/ui/activities/badges/ActivityBadges$1;
.super Ljava/lang/Object;
.source "ActivityBadges.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/badges/ActivityBadges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/badges/ActivityBadges;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/badges/ActivityBadges;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges$1;->a:Lcom/yelp/android/ui/activities/badges/ActivityBadges;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges$1;->a:Lcom/yelp/android/ui/activities/badges/ActivityBadges;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->a(Lcom/yelp/android/ui/activities/badges/ActivityBadges;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges$1;->a:Lcom/yelp/android/ui/activities/badges/ActivityBadges;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->c(Lcom/yelp/android/ui/activities/badges/ActivityBadges;)Lcom/yelp/android/ui/activities/badges/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/badges/ActivityBadges$1;->a:Lcom/yelp/android/ui/activities/badges/ActivityBadges;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/badges/ActivityBadges;->b(Lcom/yelp/android/ui/activities/badges/ActivityBadges;)Lcom/yelp/android/ui/activities/badges/a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/yelp/android/ui/activities/badges/a;->a(I)Lcom/yelp/android/serializable/Badge;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/badges/b$a;->a(Lcom/yelp/android/serializable/Badge;)V

    .line 106
    :cond_0
    return-void
.end method
