.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 1

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1761
    const/4 v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->b:I

    .line 1762
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->c:I

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
    const v3, 0x7f0f05a7

    .line 1767
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->c:I

    if-lez v0, :cond_0

    .line 1768
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->b:I

    .line 1770
    :cond_0
    iput p3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->c:I

    .line 1772
    if-nez p3, :cond_3

    .line 1773
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const v2, 0x7f0900fa

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 1775
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1776
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07046a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1788
    :cond_1
    :goto_0
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->b:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1789
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 1791
    :cond_2
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->b:I

    .line 1792
    return-void

    .line 1778
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1779
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const v2, 0x7f0900ce

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 1780
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 1781
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070305

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1782
    :cond_4
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1783
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070304

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
    .line 1797
    return-void
.end method
