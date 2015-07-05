.class Lcom/yelp/android/ui/activities/support/f;
.super Ljava/lang/Object;
.source "YelpActivity.java"

# interfaces
.implements Landroid/support/v4/widget/t;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpActivity;

.field private b:Z

.field private c:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/f;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Lcom/yelp/android/ui/activities/support/c;)V
    .locals 0

    .prologue
    .line 1197
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/support/f;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/support/f;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/f;->c:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/f;->b:Z

    .line 1216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/f;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/f;->c:Landroid/content/Intent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/f;->c:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/f;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/f;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 1219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/f;->c:Landroid/content/Intent;

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/f;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    # getter for: Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerFragment:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->access$200(Lcom/yelp/android/ui/activities/support/YelpActivity;)Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->c()V

    .line 1222
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/f;->b:Z

    .line 1210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/f;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    # getter for: Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerFragment:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->access$200(Lcom/yelp/android/ui/activities/support/YelpActivity;)Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b()V

    .line 1211
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1205
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 1

    .prologue
    .line 1226
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/f;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/f;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    # getter for: Lcom/yelp/android/ui/activities/support/YelpActivity;->mDrawerFragment:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->access$200(Lcom/yelp/android/ui/activities/support/YelpActivity;)Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a()V

    .line 1230
    :cond_1
    return-void
.end method
