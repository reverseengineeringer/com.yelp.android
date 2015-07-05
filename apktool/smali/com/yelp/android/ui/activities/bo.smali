.class Lcom/yelp/android/ui/activities/bo;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 1

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    const/4 v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/bo;->b:I

    .line 1419
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/bo;->c:I

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const v3, 0x7f0c04a1

    .line 1424
    iget v0, p0, Lcom/yelp/android/ui/activities/bo;->c:I

    if-lez v0, :cond_0

    .line 1425
    iget v0, p0, Lcom/yelp/android/ui/activities/bo;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/bo;->b:I

    .line 1427
    :cond_0
    iput p3, p0, Lcom/yelp/android/ui/activities/bo;->c:I

    .line 1429
    if-nez p3, :cond_3

    .line 1430
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const v2, 0x7f0f0101

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 1432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1433
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070447

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1446
    :cond_1
    :goto_0
    iget v0, p0, Lcom/yelp/android/ui/activities/bo;->b:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1447
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 1449
    :cond_2
    iget v0, p0, Lcom/yelp/android/ui/activities/bo;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/bo;->b:I

    .line 1450
    return-void

    .line 1436
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const v2, 0x7f0f0095

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 1439
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 1440
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0702b9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1441
    :cond_4
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bo;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0702b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1455
    return-void
.end method
