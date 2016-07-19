.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$3;
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
    .line 702
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$3;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 709
    if-eqz p2, :cond_3

    .line 710
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 711
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$3;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/EditText;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 712
    const-string/jumbo v1, "name"

    const-string/jumbo v2, "firstname"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$3;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/EditText;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 715
    const-string/jumbo v1, "name"

    const-string/jumbo v2, "lastname"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$3;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/EditText;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 718
    const-string/jumbo v1, "name"

    const-string/jumbo v2, "password"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_2
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SignUpFormInputFocused:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 721
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$3;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 723
    :cond_3
    return-void
.end method
