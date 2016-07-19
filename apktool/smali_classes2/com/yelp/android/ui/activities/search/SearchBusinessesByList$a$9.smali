.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$9;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b(Landroid/widget/ToggleButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ToggleButton;

.field final synthetic b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Landroid/widget/ToggleButton;)V
    .locals 0

    .prologue
    .line 1693
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$9;->b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$9;->a:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$9;->a:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1697
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$9;->b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Ljava/lang/Integer;)V

    .line 1698
    return-void
.end method
