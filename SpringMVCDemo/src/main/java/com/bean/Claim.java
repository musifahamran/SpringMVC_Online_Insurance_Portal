package com.bean;

import java.sql.Blob;
import java.time.LocalDate;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "claim")
public class Claim {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="claim_id")
	private int id;
	
	@Column(name="claim_type")
	private String type;
	
	@Column
	private String claim_policy;
	
	@Column
	private String description;
	
	@Column
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate incidentDate;
	
	@Column
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate submitdate;
	
	@Column
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate reviewDate;
	
	@Column
	private String claimStatus;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(targetEntity=ClaimDocument.class,cascade=CascadeType.ALL)
	@JoinColumn(name="claim_document_id") 
	private List<ClaimDocument> claimDocument;
	
	@ManyToOne(targetEntity=User.class)
	@JoinColumn(name = "reviewer_id", referencedColumnName = "user_id")
	private User claimReviewer;
	
	@Column
	private String reviewerComments;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public LocalDate getIncidentDate() {
		return incidentDate;
	}

	public void setIncidentDate(LocalDate incidentDate) {
		this.incidentDate = incidentDate;
	}

	public LocalDate getSubmitdate() {
		return submitdate;
	}

	public void setSubmitdate(LocalDate submitdate) {
		this.submitdate = submitdate;
	}

	public LocalDate getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(LocalDate reviewDate) {
		this.reviewDate = reviewDate;
	}

	public String getClaimStatus() {
		return claimStatus;
	}

	public void setClaimStatus(String claimStatus) {
		this.claimStatus = claimStatus;
	}

	public User getClaimReviewer() {
		return claimReviewer;
	}

	public void setClaimReviewer(User i) {
		this.claimReviewer = i;
	}

	public List<ClaimDocument> getClaimDocument() {
		return claimDocument;
	}

	public void setClaimDocument(List<ClaimDocument> claimDocument) {
		this.claimDocument = claimDocument;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getClaim_policy() {
		return claim_policy;
	}

	public void setClaim_policy(String claim_policy) {
		this.claim_policy = claim_policy;
	}

	public String getReviewerComments() {
		return reviewerComments;
	}

	public void setReviewerComments(String reviewerComments) {
		this.reviewerComments = reviewerComments;
	}
}
