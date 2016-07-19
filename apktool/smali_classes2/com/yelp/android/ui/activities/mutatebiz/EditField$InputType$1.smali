.class final enum Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType$1;
.super Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;
.source "EditField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/mutatebiz/EditField$1;)V

    return-void
.end method


# virtual methods
.method public setup(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->setup(Landroid/widget/TextView;)V

    .line 40
    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 41
    return-void
.end method
