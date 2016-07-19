.class public Lcom/yelp/android/serializable/YelpBusinessReview;
.super Lcom/yelp/android/serializable/_YelpBusinessReview;
.source "YelpBusinessReview.java"

# interfaces
.implements Lcom/yelp/android/serializable/Complimentable;
.implements Lcom/yelp/android/serializable/SingleFeedEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;,
        Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

.field private I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

.field private J:Lcom/yelp/android/serializable/FeatureSet;

.field private K:Ljava/util/Locale;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/IdentifiableMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 479
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview$2;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$2;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpBusinessReview;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;-><init>()V

    .line 93
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    invoke-direct {v0, v1, v1, v1}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;-><init>(III)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    .line 94
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    invoke-direct {v0, v1, v1, v1}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;-><init>(ZZZ)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    .line 95
    new-instance v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->J:Lcom/yelp/android/serializable/FeatureSet;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->K:Ljava/util/Locale;

    .line 97
    iput-boolean v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->L:Z

    .line 98
    iput-boolean v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->M:Z

    .line 99
    iput-boolean v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->N:Z

    .line 100
    return-void
.end method

.method private Y()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/IdentifiableMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->O:Ljava/util/List;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->O:Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->O:Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->O:Ljava/util/List;

    new-instance v1, Lcom/yelp/android/serializable/YelpBusinessReview$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/serializable/YelpBusinessReview$1;-><init>(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->O:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/serializable/PreviousReview;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->Q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->k:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->M()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->p:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->L()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->q:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->D()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->y:Z

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->I()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->t:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->V()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->c:Ljava/util/Date;

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->H()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->u:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->z()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->C:I

    .line 54
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->S()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->f:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->w()[I

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->F:[I

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->A()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->B:I

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->E()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->x:Z

    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->F()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->w:Z

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->O()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->n:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->j:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->K()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->r:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->y()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->D:I

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->x()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->E:I

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->N()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->o:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->r()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->M:Z

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->B()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->A:I

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->y()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->D:I

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->x()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->E:I

    .line 71
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->i:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->l()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->b:Ljava/util/Date;

    .line 73
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->l:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->e()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->z:I

    .line 75
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->m:Ljava/lang/String;

    .line 76
    iget-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a(I)V

    .line 77
    iget-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c(I)V

    .line 78
    iget-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b(I)V

    .line 79
    iget-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->a(Z)V

    .line 80
    iget-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    iget-boolean v2, p1, Lcom/yelp/android/serializable/PreviousReview;->i:Z

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->b(Z)V

    .line 81
    iget-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    iget-boolean v2, p1, Lcom/yelp/android/serializable/PreviousReview;->j:Z

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->c(Z)V

    .line 82
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->k()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->d:Ljava/util/List;

    .line 83
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->j()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->h:Ljava/util/List;

    .line 84
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PreviousReview;->m()Lcom/yelp/android/serializable/BusinessOwnerReply;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;->N:Z

    .line 87
    return-object v0
.end method

.method public static a(Landroid/os/Parcel;)Ljava/util/Locale;
    .locals 4

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 294
    if-nez v1, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 297
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic A()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->A()I

    move-result v0

    return v0
.end method

.method public bridge synthetic B()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->B()I

    move-result v0

    return v0
.end method

.method public bridge synthetic C()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->C()I

    move-result v0

    return v0
.end method

.method public bridge synthetic D()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->D()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic E()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->E()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic F()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->F()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic G()Lcom/yelp/android/serializable/TranslatedReview;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->G()Lcom/yelp/android/serializable/TranslatedReview;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->N()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic R()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->R()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->S()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic T()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->T()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic U()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->U()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic V()Ljava/util/Date;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->V()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic W()Ljava/util/Date;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->W()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic X()Lcom/yelp/android/serializable/BusinessOwnerReply;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->X()Lcom/yelp/android/serializable/BusinessOwnerReply;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->z:I

    .line 190
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Photo;)V
    .locals 2

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->d:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/as;->a(Ljava/util/List;Lcom/yelp/android/serializable/b;)I

    move-result v0

    .line 547
    if-ltz v0, :cond_0

    .line 548
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->d:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/TranslatedReview;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->v:Lcom/yelp/android/serializable/TranslatedReview;

    .line 198
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->B:I

    .line 226
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->A:I

    .line 227
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->M:Z

    .line 228
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->j:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->n:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->o:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    .line 186
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    .line 182
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->l:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->K:Ljava/util/Locale;

    .line 174
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 239
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpBusinessReview;->a(Lorg/json/JSONObject;)V

    .line 241
    const-string/jumbo v0, "feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    new-instance v1, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    const-string/jumbo v2, "useful"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string/jumbo v3, "funny"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string/jumbo v4, "cool"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;-><init>(III)V

    iput-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    .line 251
    :cond_0
    const-string/jumbo v0, "user_feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1

    .line 254
    new-instance v1, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    const-string/jumbo v2, "useful"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "funny"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "cool"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;-><init>(ZZZ)V

    iput-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->w()[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->w()[I

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/User;->a([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->M:Z

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->J:Lcom/yelp/android/serializable/FeatureSet;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/FeatureSet;->a(Ljava/util/List;)V

    .line 266
    return-void

    .line 263
    :cond_2
    iput-boolean v5, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->M:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->L:Z

    .line 202
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->J:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FeatureSet;->a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpBusinessReview;->b(Landroid/os/Parcel;)V

    .line 303
    sget-object v0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    .line 304
    sget-object v0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    .line 305
    const-class v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeatureSet;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->J:Lcom/yelp/android/serializable/FeatureSet;

    .line 306
    invoke-static {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Landroid/os/Parcel;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->K:Ljava/util/Locale;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 308
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->L:Z

    .line 309
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->N:Z

    .line 310
    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->M:Z

    .line 311
    return-void
.end method

.method public c()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    .locals 1

    .prologue
    .line 534
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->REVIEW:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->b:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 512
    if-ne p0, p1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 516
    goto :goto_0

    .line 518
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-nez v2, :cond_3

    move v0, v1

    .line 519
    goto :goto_0

    .line 521
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 522
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->i:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 523
    iget-object v2, p1, Lcom/yelp/android/serializable/YelpBusinessReview;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 524
    goto :goto_0

    .line 526
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/YelpBusinessReview;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 527
    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->N:Z

    return v0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->x()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->y()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 504
    .line 506
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 507
    return v0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/IdentifiableMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->O:Ljava/util/List;

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->Y()Ljava/util/List;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->O:Ljava/util/List;

    return-object v0
.end method

.method public l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    return-object v0
.end method

.method public m()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    return-object v0
.end method

.method public n()Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->K:Ljava/util/Locale;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->L:Z

    return v0
.end method

.method public q()Z
    .locals 4

    .prologue
    .line 214
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->v()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/yelp/android/util/i;->f(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->M:Z

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->s()Lorg/json/JSONObject;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    if-eqz v1, :cond_0

    .line 272
    const-string/jumbo v1, "user_feedback"

    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    if-eqz v1, :cond_1

    .line 275
    const-string/jumbo v1, "feedback"

    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :cond_1
    return-object v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusinessReview;->U()Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->g:Ljava/util/List;

    const-string/jumbo v1, "100millionth"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic v()J
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic w()[I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->w()[I

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 315
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpBusinessReview;->writeToParcel(Landroid/os/Parcel;I)V

    .line 316
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->H:Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    invoke-virtual {v0, p1, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->I:Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    invoke-virtual {v0, p1, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 318
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->J:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 319
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->K:Ljava/util/Locale;

    invoke-static {p1, v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Landroid/os/Parcel;Ljava/util/Locale;)V

    .line 320
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->L:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->N:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/yelp/android/serializable/YelpBusinessReview;->M:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 322
    return-void
.end method

.method public bridge synthetic x()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->x()I

    move-result v0

    return v0
.end method

.method public bridge synthetic y()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->y()I

    move-result v0

    return v0
.end method

.method public bridge synthetic z()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessReview;->z()I

    move-result v0

    return v0
.end method
