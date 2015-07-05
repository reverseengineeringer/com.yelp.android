.class Lcom/yelp/android/ui/activities/mutatebiz/o;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

.field private final b:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

.field private final c:I

.field private final d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;IILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;)V
    .locals 1

    .prologue
    .line 544
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p4, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 546
    iput p2, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->d:I

    .line 547
    iput p3, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->c:I

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->f:Z

    .line 549
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;)V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0, p1, p2, p2, p3}, Lcom/yelp/android/ui/activities/mutatebiz/o;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;IILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;)V

    .line 530
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 552
    iput p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->e:I

    .line 553
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 557
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/ah;

    .line 558
    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v1

    .line 559
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->d:I

    .line 560
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->e:I

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a(Landroid/content/Context;ILjava/lang/CharSequence;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;)Landroid/content/Intent;

    move-result-object v0

    .line 562
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->f:Z

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_0

    .line 564
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-static {v2, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 566
    :cond_0
    return-void

    .line 559
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/o;->c:I

    goto :goto_0
.end method
