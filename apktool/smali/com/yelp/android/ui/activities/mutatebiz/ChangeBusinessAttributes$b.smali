.class Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

.field private final b:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

.field private final c:I

.field private final d:I

.field private e:I

.field private f:Z

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;IILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 697
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p4, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 699
    iput p2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->d:I

    .line 700
    iput p3, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->c:I

    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->f:Z

    .line 702
    iput-object p5, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->g:Ljava/lang/String;

    .line 703
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 681
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;IILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;Ljava/lang/String;)V

    .line 682
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 706
    iput p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->e:I

    .line 707
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 711
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/d;

    .line 712
    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v2

    .line 713
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->d:I

    .line 714
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->e:I

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a(Landroid/content/Context;ILjava/lang/CharSequence;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 717
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->f:Z

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_0

    .line 719
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-static {v2, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 721
    :cond_0
    return-void

    .line 713
    :cond_1
    iget v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$b;->c:I

    goto :goto_0
.end method
