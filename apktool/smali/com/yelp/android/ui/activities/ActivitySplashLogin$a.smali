.class Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;
.super Landroid/support/v4/app/n;
.source "ActivitySplashLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivitySplashLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/ActivitySplashLogin;Landroid/support/v4/app/l;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/l;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    .line 293
    invoke-direct {p0, p2}, Landroid/support/v4/app/n;-><init>(Landroid/support/v4/app/l;)V

    .line 294
    iput-object p3, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->b:Ljava/util/List;

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->c:I

    .line 296
    return-void
.end method


# virtual methods
.method public synthetic a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->d(I)Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->c:I

    return v0
.end method

.method public d(I)Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 313
    iput p1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->c:I

    .line 314
    return-void
.end method
