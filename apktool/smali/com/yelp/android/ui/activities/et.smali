.class Lcom/yelp/android/ui/activities/et;
.super Ljava/lang/Object;
.source "CheckInDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/yelp/android/ui/activities/et;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/et;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->g(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/activities/et;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->c(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/et;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->c(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/et;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->c(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->a(Landroid/view/View;)V

    .line 348
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInExpandComment:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/et;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->h(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    return-void
.end method
