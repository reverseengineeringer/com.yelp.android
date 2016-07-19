.class Lcom/yelp/android/ui/activities/support/YelpActivity$a;
.super Ljava/lang/Object;
.source "YelpActivity.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/YelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpActivity;

.field private b:Z

.field private c:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Lcom/yelp/android/ui/activities/support/YelpActivity$1;)V
    .locals 0

    .prologue
    .line 1323
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity$a;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/support/YelpActivity$a;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->c:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 1353
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    # getter for: Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerFragment:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->access$500(Lcom/yelp/android/ui/activities/support/YelpActivity;)Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a()V

    .line 1358
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->b:Z

    .line 1336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    # getter for: Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerFragment:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->access$500(Lcom/yelp/android/ui/activities/support/YelpActivity;)Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b()V

    .line 1337
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1331
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->b:Z

    .line 1342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->c:Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->c:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 1346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->c:Landroid/content/Intent;

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$a;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    # getter for: Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerFragment:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->access$500(Lcom/yelp/android/ui/activities/support/YelpActivity;)Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->c()V

    .line 1349
    return-void
.end method
