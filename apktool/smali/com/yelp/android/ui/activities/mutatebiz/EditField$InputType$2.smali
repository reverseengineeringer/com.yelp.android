.class final enum Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType$2;
.super Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;
.source "EditField.java"


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 6

    .prologue
    .line 42
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;-><init>(Ljava/lang/String;IIILcom/yelp/android/ui/activities/mutatebiz/t;)V

    return-void
.end method


# virtual methods
.method public setup(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->setup(Landroid/widget/TextView;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 48
    return-void
.end method
