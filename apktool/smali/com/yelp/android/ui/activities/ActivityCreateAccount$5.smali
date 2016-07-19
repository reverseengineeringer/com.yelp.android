.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$5;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 748
    if-eqz p2, :cond_1

    .line 749
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Z)Z

    .line 751
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignUpFormInputFocused:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "email"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 754
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignUpDropdownShown:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 756
    :cond_1
    return-void
.end method
